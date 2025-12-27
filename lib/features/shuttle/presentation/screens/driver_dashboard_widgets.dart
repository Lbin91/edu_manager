import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/shuttle_stop.dart';
import '../../domain/entities/student_attendance.dart';
import '../providers/attendance_controller.dart';

// Part 1: Header
class DriverHeaderWidget extends StatelessWidget {
  final ShuttleStop stop;

  const DriverHeaderWidget({super.key, required this.stop});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueGrey[900], // Dark theme header
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            '현재 정류장',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Text(
            stop.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '예정 시간: ${stop.scheduledTime}',
            style: const TextStyle(color: Colors.amberAccent, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

// Part 2: Action Area
class DriverActionArea extends StatelessWidget {
  final VoidCallback onNext;

  const DriverActionArea({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 56,
              child: ElevatedButton.icon(
                onPressed: () {
                  // TODO: Implement "Departed" status update/notification
                  // For MVP, just next stop
                  onNext();
                },
                icon: const Icon(Icons.departure_board),
                label: const Text('출발 / 다음 정류장'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Part 3: Student List
class StudentListWidget extends ConsumerWidget {
  final String scheduleId;
  final String stopId;

  const StudentListWidget({
    super.key,
    required this.scheduleId,
    required this.stopId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listAsync = ref.watch(
      attendanceControllerProvider(scheduleId: scheduleId, stopId: stopId),
    );

    return listAsync.when(
      data: (list) {
        if (list.isEmpty) {
          return const Center(child: Text('탑승/하차 예정 인원이 없습니다.'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: list.length,
          itemBuilder: (context, index) {
            final item = list[index];
            return _StudentCard(item: item);
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
    );
  }
}

class _StudentCard extends ConsumerWidget {
  final StudentAttendance item;

  const _StudentCard({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Status colors
    final Color cardColor;
    final Color textColor;
    switch (item.status) {
      case AttendanceStatus.waiting:
        cardColor = Colors.white;
        textColor = Colors.black87;
        break;
      case AttendanceStatus.onBoard:
        cardColor = Colors.blue.shade100;
        textColor = Colors.blue.shade900;
        break;
      case AttendanceStatus.dropOff:
        cardColor = Colors.grey.shade300;
        textColor = Colors.grey.shade700;
        break;
      case AttendanceStatus.absent:
        cardColor = Colors.red.shade100;
        textColor = Colors.red.shade900;
        break;
    }

    return Card(
      color: cardColor,
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: () {
          // Cycle Status: Waiting -> OnBoard -> OffBoard -> Waiting (Loop for demo)
          // In reality: Check-in logic
          AttendanceStatus nextStatus;
          if (item.status == AttendanceStatus.waiting)
            nextStatus = AttendanceStatus.onBoard;
          else if (item.status == AttendanceStatus.onBoard)
            nextStatus = AttendanceStatus.dropOff;
          // else if (item.status == AttendanceStatus.dropOff) nextStatus = AttendanceStatus.waiting;
          else
            nextStatus = AttendanceStatus.waiting; // Reset

          ref
              .read(
                attendanceControllerProvider(
                  scheduleId: item.scheduleId,
                  stopId: item.stopId,
                ).notifier,
              )
              .updateStatus(item.id, nextStatus);
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: textColor.withValues(alpha: 0.2),
                child: Text(
                  item.studentName[0],
                  style: TextStyle(color: textColor),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${item.studentName} (${item.grade}학년)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                    Text(
                      '${item.schoolName} / ${item.parentPhone}',
                      style: TextStyle(color: textColor.withValues(alpha: 0.8)),
                    ),
                  ],
                ),
              ),
              if (item.status != AttendanceStatus.waiting)
                Icon(Icons.check_circle, color: textColor),
            ],
          ),
        ),
      ),
    );
  }
}

// Part 4: Timeline
class DriverTimelineWidget extends StatelessWidget {
  final List<ShuttleStop> stops;
  final int currentIndex;
  final Function(int) onStopTap;

  const DriverTimelineWidget({
    super.key,
    required this.stops,
    required this.currentIndex,
    required this.onStopTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.grey[100],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stops.length,
        itemBuilder: (context, index) {
          final stop = stops[index];
          final isPast = index < currentIndex;
          final isCurrent = index == currentIndex;

          return GestureDetector(
            // Make tappable for testing
            onTap: () => onStopTap(index),
            child: Container(
              width: 100,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: isCurrent
                    ? Border(bottom: BorderSide(color: Colors.indigo, width: 4))
                    : null,
                color: isCurrent ? Colors.white : Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    stop.scheduledTime,
                    style: TextStyle(
                      fontWeight: isCurrent
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isPast ? Colors.grey : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    stop.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isPast
                          ? Colors.grey
                          : (isCurrent ? Colors.indigo : Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
