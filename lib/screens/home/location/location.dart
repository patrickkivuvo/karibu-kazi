import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:geolocator/geolocator.dart';
import 'package:karibu_kazi/screens/home/home_worker/bottom_navigation_bar/bottom_navigation_bar.dart';


class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Position? _currentPosition;
  late MapController controller;
   var long = "";
  var lat = "";
  bool isPinning = false;
@override
void initState() {
  super.initState();
  // Initialize the map controller
  controller = MapController();
  // Get the current location when the widget initializes
  _getCurrentLocation();
}


void _getCurrentLocation() async {
    LocationPermission per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied ||
        per == LocationPermission.deniedForever) {
      print("permission denied");
      LocationPermission per1 = await Geolocator.requestPermission();
      setState(() {
        isPinning = false;
      });
    } else {
      Position currentLoc = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      setState(() {
        isPinning = false;
        long = currentLoc.longitude.toString();
        lat = currentLoc.latitude.toString();
      });
    }
  }

  // Function to handle when the user enables location
  void _onEnableLocationPressed() {
  if (_currentPosition != null) {
    // Send the current position to your backend
    print('Current Location: ${_currentPosition!.latitude}, ${_currentPosition!.longitude}');
    // Show a dialog with latitude and longitude values
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Current Location"),
          content: Text("Latitude: ${_currentPosition!.latitude}\nLongitude: ${_currentPosition!.longitude}"),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  } else {
    print('Current position is not available');
  }
}


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: media.width * 0.07,
                ),
                SizedBox(
                  height: media.width * 0.93,
                  child: OSMFlutter(
                    controller: controller,
                    osmOption: OSMOption(
                      userTrackingOption: const UserTrackingOption(
                        enableTracking: true,
                        unFollowUser: false,
                      ),
                      zoomOption: const ZoomOption(
                        initZoom: 59,
                        minZoomLevel: 3,
                        maxZoomLevel: 19,
                        stepZoom: 1.0,
                      ),
                      userLocationMarker: UserLocationMaker(
                        personMarker: const MarkerIcon(
                          icon: Icon(
                            Icons.location_history_rounded,
                            color: Colors.red,
                            size: 48,
                          ),
                        ),
                        directionArrowMarker: const MarkerIcon(
                          icon: Icon(
                            Icons.double_arrow,
                            size: 48,
                          ),
                        ),
                      ),
                      roadConfiguration: const RoadOption(
                        roadColor: Colors.yellowAccent,
                      ),
                      markerOption: MarkerOption(
                        defaultMarker: const MarkerIcon(
                          icon: Icon(
                            Icons.person_pin_circle,
                            color: Colors.blue,
                            size: 56,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.12,
                ),
                Text(
                  "Enable your Location",
                  style: TextStyle(
                    color: TColor.placeholder,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                const Text(
                  "Allow this app to access your location to personalize your experience.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: media.height * 0.13,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: media.width * 0.02,
                ),
                 SizedBox(
                  height: 48,
                  child: CustomButton(
                    color: TColor.placeholder,
                    textColor: TColor.white,
                    text: 'Enable Location',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomBottomNavigationBarWorker(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
