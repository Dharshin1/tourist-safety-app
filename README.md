Tourist Safety App

A mobile application built using Flutter to enhance tourist safety through location awareness and map-based navigation. This project focuses on providing a foundation for real-time safety features using geolocation and mapping services.

📌 Overview

Travelers often lack immediate access to safety-related information in unfamiliar locations. This project aims to address that gap by providing a map-centric interface that can be extended with intelligent safety features such as alerts, risk prediction, and emergency assistance.

The current prototype demonstrates core location and map functionality, serving as a base for future enhancements.

✨ Current Features
🗺️ Interactive map using Google Maps SDK
📍 Displays user’s current location
🔄 Real-time map rendering
📡 Location tracking using Geolocator
🧰 Tech Stack
Framework: Flutter
Language: Dart
Maps Integration: Google Maps SDK for Android
Location Services: Geolocator
⚙️ Setup & Installation
Prerequisites
Flutter SDK installed
Android Emulator or physical device
Google Maps API Key
Steps to Run
Clone the repository:
git clone https://github.com/YOUR_USERNAME/tourist-safety-app.git
cd tourist-safety-app
Install dependencies:
flutter pub get
Configure API Key (Important)

Create or edit the file:

android/local.properties

Add your API key:

MAPS_API_KEY=your_google_maps_api_key

⚠️ Note: The API key is not stored in the source code for security reasons.

Run the application:
flutter run
🔐 Security Considerations
API keys are not hardcoded in the repository
Keys are stored locally using configuration files
Google Maps API key is restricted to Android apps using package name and SHA-1 fingerprint
🚧 Project Status

This project is currently in the prototype stage.

Implemented:

Map integration
Location tracking

Planned:

Emergency SOS feature
Safety alerts and notifications
AI-based risk prediction
Integration with external safety data sources
🎯 Use Case

This application can be extended to support:

Tourist safety monitoring
Navigation with risk awareness
Emergency response systems
📂 Project Structure (Simplified)
lib/
 ├── main.dart
 ├── screens/
 ├── services/
android/
🤝 Contribution

This is a hackathon project and currently not open for external contributions. Suggestions and feedback are welcome.

📄 License

This project is for educational and hackathon purposes.

👤 Author
Dharshini
