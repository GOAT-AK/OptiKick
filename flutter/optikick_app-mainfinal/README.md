# OptiKick - Sports Performance Management App

<div align="center">
  [![Flutter](https://img.shields.io/badge/Flutter-3.5.0+-blue.svg)](https://flutter.dev/)
  [![Dart](https://img.shields.io/badge/Dart-3.0+-blue.svg)](https://dart.dev/)
  [![BLoC](https://img.shields.io/badge/BLoC-9.0.0+-purple.svg)](https://bloclibrary.dev/)
</div>

## 📱 About

OptiKick is a sports performance management app that connects **Players**, **Doctors**, and **Coaches** in a unified platform for tracking athletic performance, managing training programs, and professional oversight.

## 🚀 Quick Start

### Prerequisites
- Flutter 3.5.0+
- Dart 3.0+

### Installation
```bash
git clone https://github.com/yourusername/optikick-app.git
cd optikick-app
flutter pub get
flutter run
```

## 👥 User Roles

### 🏃‍♂️ Player
- Performance dashboard & metrics
- Training programs
- Assessment requests
- Chat with coaches/doctors

### 👨‍⚕️ Doctor  
- Player management
- Assessment approvals
- Medical oversight
- Communication hub

### 🏃‍♂️ Coach
- Team management
- Training program creation
- Performance monitoring
- Player coordination

## 🔐 Test Accounts

```dart
// Player
Email: luisdiaz@gmail.com
Password: luis6640

// Doctor
Email: jonathan@gmail.com  
Password: jonathan6640

// Coach
Email: arneslot@gmail.com
Password: arne6640
```

## 🏗️ Architecture

- **Clean Architecture** with BLoC pattern
- **Feature-based** folder structure
- **Dio** for API calls
- **SharedPreferences** for local storage

```
lib/
├── core/           # Shared utilities, API, routes
├── features/       # Feature modules (auth, home, profile, etc.)
└── main.dart       # App entry point
```

## 📦 Key Dependencies

| Package | Purpose |
|---------|---------|
| `flutter_bloc` | State management |
| `dio` | HTTP client |
| `shared_preferences` | Local storage |
| `fl_chart` | Data visualization |
| `flutter_screenutil` | Responsive design |

## 🔧 Development

### Project Structure
Each feature follows BLoC pattern:
```
feature/
├── presentation/
│   ├── cubit/      # Business logic
│   ├── pages/      # Screens
│   └── widgets/    # UI components
└── data/
    └── models/     # Data models
```

### API Endpoint
```
https://optikick-production-8c8c.up.railway.app/api/
```

## 📱 Building

```bash
# Android
flutter build apk --release

# iOS  
flutter build ios --release

# Web
flutter build web --release
```

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open Pull Request

---

<div align="center">
  Made with ❤️ by the OptiKick Team
</div>
