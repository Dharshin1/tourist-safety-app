import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const TouristSafetyApp());
}

class TouristSafetyApp extends StatelessWidget {
  const TouristSafetyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourist Safety App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static const LatLng initialPosition = LatLng(12.9716, 77.5946); // Bangalore

  void _sosPressed() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("🚨 SOS Alert Sent!")),
    );
  }

  void _findSafePlaces() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("🔍 Finding nearby safe places...")),
    );
  }

  void _shareLocation() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("📍 Location shared with emergency contact")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tourist Safety App"),
        centerTitle: true,
      ),
      body: Stack(
        children: [

          // GOOGLE MAP
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: initialPosition,
              zoom: 14,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),

          // BUTTONS OVERLAY
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              children: [

                // SOS BUTTON
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: _sosPressed,
                  child: const Text("🚨 SOS EMERGENCY"),
                ),

                const SizedBox(height: 10),

                // SAFE PLACES
                ElevatedButton(
                  onPressed: _findSafePlaces,
                  child: const Text("🔍 Find Safe Places"),
                ),

                const SizedBox(height: 10),

                // SHARE LOCATION
                ElevatedButton(
                  onPressed: _shareLocation,
                  child: const Text("📍 Share Location"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}