# Health Habit Coach - Flutter Mobile App

An AI-powered habit tracking app that combines daily habit tracking, streak gamification, and social challenges to help users build lasting health behaviors.

## Features

### Phase 1: Foundation (Weeks 1-6)
- ✅ Habit creation wizard with preset types
- ✅ Daily AI check-ins with personalized messages
- ✅ Streak counter with calendar view
- ✅ Push notifications
- ✅ Basic progress charts
- ✅ Onboarding flow & goal setting

### Phase 2: Social & Gamification (Weeks 7-12)
- 🔄 Friend invites & groups
- 🔄 Weekly social challenges
- 🔄 Group leaderboards
- 🔄 Milestone badges & rewards
- 🔄 Streak-saver mechanic
- 🔄 Habit templates library

### Phase 3: Intelligence (Weeks 13-20)
- 📋 AI weekly insight summaries
- 📋 Habit correlation insights
- 📋 Adaptive difficulty scaling
- 📋 Personalized coaching plans
- 📋 Apple Health / Fitbit integration
- 📋 Premium subscription tier

## Tech Stack

- **Framework**: Flutter (Dart)
- **Backend**: Firebase (Auth, Firestore, Cloud Messaging)
- **State Management**: Provider
- **Database**: Cloud Firestore
- **Notifications**: Firebase Cloud Messaging

## Getting Started

### Prerequisites

- Flutter SDK 3.0+
- Firebase CLI
- iOS Xcode (for iOS development)
- Android Studio (for Android development)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/musokejayson-source/habit-coach-app.git
   cd habit-coach-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Firebase**
   ```bash
   flutterfire configure
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── config/
│   └── firebase_config.dart # Firebase initialization
├── models/
│   ├── user_model.dart
│   ├── habit_model.dart
│   ├── streak_model.dart
│   └── challenge_model.dart
├── services/
│   ├── auth_service.dart
│   ├── firestore_service.dart
│   ├── notification_service.dart
│   └── ai_service.dart
├── providers/
│   ├── auth_provider.dart
│   ├── habit_provider.dart
│   ├── streak_provider.dart
│   └── user_provider.dart
├── screens/
│   ├── auth/
│   │   ├── login_screen.dart
│   │   ├── signup_screen.dart
│   │   └── onboarding_screen.dart
│   ├── home/
│   │   ├── home_screen.dart
│   │   ├── habit_list_screen.dart
│   │   └── daily_checkin_screen.dart
│   ├── habits/
│   │   ├── create_habit_screen.dart
│   │   ├── habit_detail_screen.dart
│   │   └── habit_templates_screen.dart
│   ├── progress/
│   │   ├── progress_screen.dart
│   │   ├── insights_screen.dart
│   │   └── calendar_screen.dart
│   ├── social/
│   │   ├── challenges_screen.dart
│   │   ├── leaderboard_screen.dart
│   │   └── friends_screen.dart
│   └── profile/
│       ├── profile_screen.dart
│       ├── settings_screen.dart
│       └── badges_screen.dart
├── widgets/
│   ├── streak_card.dart
│   ├── habit_card.dart
│   ├── progress_chart.dart
│   ├── challenge_card.dart
│   └── badge_widget.dart
└── utils/
    ├── constants.dart
    ├── theme.dart
    └── helpers.dart
```

## Firebase Setup

1. Create a Firebase project at [console.firebase.google.com](https://console.firebase.google.com)
2. Enable Authentication (Email/Password)
3. Create Firestore database
4. Set up Cloud Messaging
5. Configure `.env` file with Firebase credentials

## License

This project is licensed under the BSL 1.0 License.

## Support

For issues and feature requests, please create an issue on GitHub.
