 import 'package:flutter/material.dart';
import 'package:qr_reader/providers/db_provider.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ScanModel scan = ModalRoute.of(context)!.settings.arguments as ScanModel;

    return Scaffold(
      body: Center (
        child: Text(scan.valor),
      ),
    );
  }
}