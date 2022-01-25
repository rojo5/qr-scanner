 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_reader/providers/db_provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {

    final CameraPosition puntoInicial  = CameraPosition(
      target: LatLng(37.42961333, -122.0857496),
      zoom: 14.47
    );

    final ScanModel scan = ModalRoute.of(context)!.settings.arguments as ScanModel;

    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: puntoInicial,
        onMapCreated: (GoogleMapController controller) {

          _controller.complete(controller);
        },
      )
    );
  }
}