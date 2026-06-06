import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String email;
  final String name;
  final String? profileImage;
  final DateTime createdAt;
  final int totalHabits;
  final int completedToday;
  final int totalPoints;
  final List<String> badges;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.profileImage,
    required this.createdAt,
    this.totalHabits = 0,
    this.completedToday = 0,
    this.totalPoints = 0,
    this.badges = const [],
  });

  factory UserModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return UserModel(
      id: doc.id,
      email: data['email'] ?? '',
      name: data['name'] ?? '',
      profileImage: data['profileImage'],
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      totalHabits: data['totalHabits'] ?? 0,
      completedToday: data['completedToday'] ?? 0,
      totalPoints: data['totalPoints'] ?? 0,
      badges: List<String>.from(data['badges'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'profileImage': profileImage,
      'createdAt': Timestamp.fromDate(createdAt),
      'totalHabits': totalHabits,
      'completedToday': completedToday,
      'totalPoints': totalPoints,
      'badges': badges,
    };
  }
}
