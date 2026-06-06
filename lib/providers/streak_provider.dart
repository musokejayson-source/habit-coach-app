import 'package:flutter/material.dart';
import '../models/streak_model.dart';
import '../services/firestore_service.dart';

class StreakProvider extends ChangeNotifier {
  final FirestoreService _firestoreService = FirestoreService();
  Map<String, StreakModel> _streaks = {};
  bool _isLoading = false;

  Map<String, StreakModel> get streaks => _streaks;
  bool get isLoading => _isLoading;

  Future<void> fetchStreaks(String userId) async {
    try {
      _isLoading = true;
      notifyListeners();

      _streaks = await _firestoreService.getUserStreaks(userId);
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();
    }
  }

  StreakModel? getStreak(String habitId) {
    return _streaks[habitId];
  }

  int getTotalStreakPoints() {
    return _streaks.values.fold(0, (sum, streak) => sum + (streak.currentStreak * 5));
  }
}
