import 'package:fpdart/fpdart.dart';
import '../entities/shuttle_schedule.dart';

abstract interface class ShuttleRepository {
  /// 금일 운행 가능한 모든 스케줄 목록 조회 (기사님용)
  Future<Either<String, List<ShuttleSchedule>>> getSchedules(DateTime date);

  /// 특정 스케줄 상세 조회
  Future<Either<String, ShuttleSchedule>> getSchedule(String id);
}
