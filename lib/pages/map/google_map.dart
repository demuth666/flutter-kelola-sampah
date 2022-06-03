import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class inimap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.800717, 107.349293),
    zoom: 17,
  );

  static final Marker _kGooglePlexMarker = Marker(markerId: MarkerId('_kGoolePlexMarker'),
  infoWindow: InfoWindow(title: 'TPU unknown'),
  icon: BitmapDescriptor.defaultMarker,
  position: LatLng(-6.800717, 107.349293)
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Map TPU'),
      ),
      body: GoogleMap(
        mapType: MapType.satellite,
        markers: {_kGooglePlexMarker},
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}