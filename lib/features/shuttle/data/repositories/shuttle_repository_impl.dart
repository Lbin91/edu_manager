import 'package:fpdart/fpdart.dart';
import '../../domain/entities/shuttle_route.dart';
import '../../domain/entities/shuttle_schedule.dart';
import '../../domain/entities/shuttle_stop.dart';
import '../../domain/repositories/shuttle_repository.dart';

class ShuttleRepositoryMock implements ShuttleRepository {
  @override
  Future<Either<String, List<ShuttleSchedule>>> getSchedules(
    DateTime date,
  ) async {
    // Mock Data
    final routeA = ShuttleRoute(
      id: 'r1',
      name: 'A호차',
      driverId: 'd1',
      carNumber: '12가 3456',
    );

    final stops = [
      const ShuttleStop(
        id: 's1',
        name: '래미안 정문',
        lat: 37.1,
        lng: 127.1,
        orderIndex: 1,
        scheduledTime: '14:00',
      ),
      const ShuttleStop(
        id: 's2',
        name: '자이 후문',
        lat: 37.2,
        lng: 127.2,
        orderIndex: 2,
        scheduledTime: '14:15',
      ),
      const ShuttleStop(
        id: 's3',
        name: '학원 도착',
        lat: 37.3,
        lng: 127.3,
        orderIndex: 3,
        scheduledTime: '14:30',
      ),
    ];

    final schedule1 = ShuttleSchedule(
      id: 'sch1',
      route: routeA,
      stops: stops,
      operationDate: DateTime.now(),
      roundNumber: 1,
    );
    final schedule2 = ShuttleSchedule(
      id: 'sch2',
      route: routeA,
      stops: stops,
      operationDate: DateTime.now(),
      roundNumber: 2,
    );

    await Future.delayed(const Duration(milliseconds: 500));
    return Right([schedule1, schedule2]);
  }

  @override
  Future<Either<String, ShuttleSchedule>> getSchedule(String id) async {
    // For MVP, just return a dummy schedule matching ID logic if needed,
    // but we can reuse the list logic.
    final schedules = await getSchedules(DateTime.now());
    return schedules.fold((l) => Left(l), (r) {
      try {
        return Right(r.firstWhere((s) => s.id == id));
      } catch (e) {
        return const Left('Schedule not found');
      }
    });
  }
}
