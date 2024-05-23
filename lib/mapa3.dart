import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa3 extends StatefulWidget {
  const Mapa3({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de Maps'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(49.8536638,-97.3176468), zoom: 15),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/spinal-map/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(49.8536638,-97.3176468),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.orangeAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}