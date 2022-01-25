import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/widgets/scan_tiles.dart';

class AddresPage extends StatelessWidget {
  const AddresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScanTiles(tipo: 'http');
  }
}
