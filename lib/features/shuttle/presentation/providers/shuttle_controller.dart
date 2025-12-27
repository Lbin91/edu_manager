import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/shuttle_schedule.dart';
import '../../domain/repositories/shuttle_repository.dart';
import '../../data/repositories/shuttle_repository_impl.dart';

part 'shuttle_controller.g.dart';

@riverpod
ShuttleRepository shuttleRepository(Ref ref) {
  return ShuttleRepositoryMock();
}

// Today's Schedules Controller
@riverpod
Future<List<ShuttleSchedule>> todaySchedules(Ref ref) {
  final repo = ref.watch(shuttleRepositoryProvider);
  return repo
      .getSchedules(DateTime.now())
      .then((result) => result.getOrElse((_) => []));
}

// Current Selected Schedule State
@riverpod
class CurrentScheduleController extends _$CurrentScheduleController {
  @override
  ShuttleSchedule? build() {
    return null;
  }

  void selectSchedule(ShuttleSchedule schedule) {
    state = schedule;
  }

  void clearSelection() {
    state = null;
  }
}

// Current Stop Index Controller (Simple State for MVP)
@riverpod
class CurrentStopIndexController extends _$CurrentStopIndexController {
  @override
  int build() => 0;

  void nextStop() {
    state++;
  }

  void prevStop() {
    if (state > 0) state--;
  }

  void setIndex(int index) {
    state = index;
  }
}
