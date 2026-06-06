import 'package:cloud_firestore/cloud_firestore.dart';

class Habit {
  final String id;
  final String userId;
  final String title;
  final String description;
  final String category; // health, fitness, meditation, sleep
  final String frequency; // daily, weekly
  final int targetDays;
  final int currentStreak;
  final int longestStreak;
  final DateTime createdAt;
  final List<DateTime> completedDates;
  final bool isActive;

  Habit({
    required this.id,
    required this.userId,
    required this.title,
    required this.description,
    required this.category,
    required this.frequency,
    required this.targetDays,
    required this.currentStreak,
    required this.longestStreak,
    required this.createdAt,
    required this.completedDates,
    this.isActive = true,
  });

  factory Habit.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Habit(
      id: doc.id,
      userId: data['userId'] ?? '',
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      category: data['category'] ?? 'health',
      frequency: data['frequency'] ?? 'daily',
      targetDays: data['targetDays'] ?? 30,
      currentStreak: data['currentStreak'] ?? 0,
      longestStreak: data['longestStreak'] ?? 0,
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      completedDates: (data['completedDates'] as List<dynamic>?)
              ?.map((date) => (date as Timestamp).toDate())
              .toList() ??
          [],
      isActive: data['isActive'] ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'title': title,
      'description': description,
      'category': category,
      'frequency': frequency,
      'targetDays': targetDays,
      'currentStreak': currentStreak,
      'longestStreak': longestStreak,
      'createdAt': Timestamp.fromDate(createdAt),
      'completedDates':
          completedDates.map((date) => Timestamp.fromDate(date)).toList(),
      'isActive': isActive,
    };
  }

  bool isCompletedToday() {
    final today = DateTime.now();
    return completedDates.any((date) =>
        date.year == today.year &&
        date.month == today.month &&
        date.day == today.day);
  }
}
