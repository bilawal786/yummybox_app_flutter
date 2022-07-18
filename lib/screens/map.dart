// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//
// class MyMap extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyMap> {
//
//
//   Completer<GoogleMapController> _controller = Completer();
//
//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );
//
//   static final CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: GoogleMap(
//         mapType: MapType.normal,
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: Text('To the location!'),
//         icon: Icon(Icons.location),
//       ),
//     );
//   }
//
//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MyMap extends StatefulWidget {
  @override
  State<MyMap> createState() => MyMapState();
}

class MyMapState extends State<MyMap> {
  LatLng initPosition = LatLng(0, 0); //initial Position cannot assign null values
  LatLng currentLatLng= LatLng(0.0, 0.0); //initial currentPosition values cannot assign null values
  LocationPermission permission = LocationPermission.denied; //initial permission status
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    checkPermission();
  }

  //checkPersion before initialize the map
  void checkPermission() async{
    permission = await Geolocator.checkPermission();
  }

  // get current location
  void getCurrentLocation() async{
    await Geolocator.getCurrentPosition().then((currLocation) {
      setState(() {
        currentLatLng =
        new LatLng(currLocation.latitude, currLocation.longitude);
      });
    });
  }

  //call this onPress floating action button
  void _currentLocation() async {
    final GoogleMapController controller = await _controller.future;
    getCurrentLocation();
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 0,
        target: currentLatLng,
        zoom: 18.0,
      ),
    ));
  }

  //Check permission status and currentPosition before render the map
  bool checkReady(LatLng? x, LocationPermission? y) {
    if (x == initPosition || y == LocationPermission.denied || y == LocationPermission.deniedForever) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    print(permission);
    print("Current Location --------> " +
        currentLatLng.latitude.toString() +
        " " +
        currentLatLng.longitude.toString());
    return MaterialApp(
      //remove debug banner on top right corner
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        //ternary operator use for conditional rendering
        body: checkReady(currentLatLng, permission)
            ? Center(child: CircularProgressIndicator())
        //Stack : place floating action button on top of the map
            : Stack(children: [
          GoogleMap(
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(target: currentLatLng),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          //Positioned : use to place button bottom right corner
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(15),
              child: FloatingActionButton(
                  onPressed: _currentLocation,
                  child: Icon(Icons.location_on)),
            ),
          ),
        ]),
      ),
    );
  }
}