import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/shuttle_controller.dart';
import 'driver_dashboard_widgets.dart';

class DriverMainScreen extends ConsumerWidget {
  const DriverMainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedulesAsync = ref.watch(todaySchedulesProvider);
    final currentSchedule = ref.watch(currentScheduleControllerProvider);

    // 1. If no schedule selected, show selection list
    if (currentSchedule == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('오늘의 운행 선택')),
        body: schedulesAsync.when(
          data: (schedules) => ListView.builder(
            itemCount: schedules.length,
            itemBuilder: (context, index) {
              final schedule = schedules[index];
              return ListTile(
                title: Text(
                  '${schedule.route.name} - ${schedule.roundNumber}회차',
                ),
                subtitle: Text('차량: ${schedule.route.carNumber}'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  ref
                      .read(currentScheduleControllerProvider.notifier)
                      .selectSchedule(schedule);
                },
              );
            },
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text('Error: $err')),
        ),
      );
    }

    // 2. Main Driver Dashboard (4-Part Layout)
    return const DriverDashboardView();
  }
}

class DriverDashboardView extends ConsumerWidget {
  const DriverDashboardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedule = ref.watch(currentScheduleControllerProvider)!;
    final currentIndex = ref.watch(currentStopIndexControllerProvider);
    final stops = schedule.stops;
    final currentStop = stops.isNotEmpty ? stops[currentIndex] : null;

    return Scaffold(
      appBar: AppBar(
        title: Text('${schedule.route.name} (${schedule.roundNumber}회차)'),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              ref
                  .read(currentScheduleControllerProvider.notifier)
                  .clearSelection();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Part 1: Header (Current Stop Info)
          if (currentStop != null) DriverHeaderWidget(stop: currentStop),

          // Part 2: Action Area (Buttons)
          DriverActionArea(
            onNext: () {
              if (currentIndex < stops.length - 1) {
                ref
                    .read(currentStopIndexControllerProvider.notifier)
                    .nextStop();
              } else {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('운행 종료!')));
                ref
                    .read(currentScheduleControllerProvider.notifier)
                    .clearSelection();
              }
            },
          ),

          // Part 3: Student List (Expanded)
          Expanded(
            child: currentStop != null
                ? StudentListWidget(
                    scheduleId: schedule.id,
                    stopId: currentStop.id,
                  )
                : const Center(child: Text('정류장 정보 없음')),
          ),

          // Part 4: Timeline
          DriverTimelineWidget(
            stops: stops,
            currentIndex: currentIndex,
            onStopTap: (index) {
              ref
                  .read(currentStopIndexControllerProvider.notifier)
                  .setIndex(index);
            },
          ),
        ],
      ),
    );
  }
}
