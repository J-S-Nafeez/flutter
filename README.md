# Findoc Gurugram - Flutter Assignment

A Flutter application implementing a login screen and home screen with image fetching capabilities.

## Features Implemented

### ✅ Login Screen
- **Email Field**: With proper email format validation
- **Password Field**: With comprehensive password validation
  - Minimum 8 characters
  - At least one uppercase letter
  - At least one lowercase letter
  - At least one numeric digit
  - At least one symbol
- **Form Validation**: Real-time validation with error messages
- **Beautiful UI**: Modern gradient design with Material Design 3
- **BLoC State Management**: Proper state management for login flow

### ✅ Home Screen
- **Image Fetching**: Fetches 10 images from Picsum Photos API
- **Responsive Layout**: Images adjust height based on aspect ratio
- **Beautiful Cards**: Each image displayed in a card with title and description
- **Montserrat Fonts**: Uses Google Fonts as specified in requirements
- **Pull to Refresh**: Swipe down to refresh images
- **Error Handling**: Graceful error handling with retry functionality

### ✅ Navigation
- **Seamless Flow**: Login success automatically navigates to home screen
- **Proper Routing**: Uses Flutter's navigation system

## Demo Credentials

Use these credentials to test the login:
- **Email**: `admin@example.com`
- **Password**: `Admin@123`

## Getting Started

### Prerequisites
- Flutter SDK (3.8.1 or higher)
- Android Studio / VS Code
- Android SDK (for Android development)
- iOS SDK (for iOS development, macOS only)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd findoc_gurugram
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Building for Production

- **Android APK**:
  ```bash
  flutter build apk --release
  ```

- **iOS** (macOS only):
  ```bash
  flutter build ios --release
  ```

## Project Structure

```
lib/
├── blocs/
│   └── login/
│       ├── login_bloc.dart
│       ├── login_event.dart
│       └── login_state.dart
├── screens/
│   ├── login_screen.dart
│   └── home_screen.dart
├── main.dart
└── utils/
```

## Dependencies

- **flutter_bloc**: State management
- **equatable**: Value equality
- **http**: HTTP requests for API calls
- **google_fonts**: Custom fonts (Montserrat)

## API Integration

The app integrates with the Picsum Photos API:
- **Endpoint**: `https://picsum.photos/id/{id}/info`
- **Images**: Fetches 10 random images with metadata
- **Fallback**: Graceful handling of API failures

## Validation Rules

### Email Validation
- Must be a valid email format
- Uses regex pattern matching

### Password Validation
- Minimum 8 characters
- At least one uppercase letter (A-Z)
- At least one lowercase letter (a-z)
- At least one numeric digit (0-9)
- At least one symbol (!@#$%^&*(),.?":{}|<>)

## Running in Android Studio

1. Open Android Studio
2. Open the project folder (`findoc_gurugram`)
3. Wait for Flutter dependencies to sync
4. Select a device/emulator
5. Click the "Run" button or press `Shift + F10`

## Troubleshooting

### Common Issues

1. **Dependencies not found**:
   ```bash
   flutter clean
   flutter pub get
   ```

2. **Build errors**:
   ```bash
   flutter clean
   flutter build apk --debug
   ```

3. **Hot reload not working**:
   - Restart the app
   - Check for syntax errors

### Flutter Doctor

Run this command to check your Flutter installation:
```bash
flutter doctor
```

## Requirements Met

✅ **Login Screen with validation**  
✅ **Home Screen with image fetching**  
✅ **BLoC State Management**  
✅ **Email and Password validation**  
✅ **Navigation between screens**  
✅ **API integration with Picsum Photos**  
✅ **Responsive UI with proper styling**  
✅ **Montserrat font implementation**  
✅ **Error handling and user feedback**  

## License

This project is created for the Findoc Gurugram Flutter assignment.
