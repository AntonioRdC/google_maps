import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeMap extends StatefulWidget {
  const HomeMap({Key? key}) : super(key: key);

  @override
  State<HomeMap> createState() => _HomeMapState();
}

class _HomeMapState extends State<HomeMap> {
  Set<Marker> marcadores = {};

  _carregarMarcadores() {
    Set<Marker> _listaMarcadores = {};
    Marker marcador1 = Marker(
      markerId: MarkerId('marker-casa'),
      position: LatLng(-9.894811281402449, -63.02181815701216),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    _listaMarcadores.add(marcador1);
    setState(() {
      marcadores = _listaMarcadores;
    });
  }

  @override
  Widget build(BuildContext context) {
    _carregarMarcadores();
    return SingleChildScrollView(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('Setor 11\nRua Mário Quintana\nN°4062'),
              GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  zoom: 16,
                  target: LatLng(-9.894811281402449, -63.02181815701216),
                ),
                markers: marcadores
              )
            ],
          ),
        ),
      ),
    );
  }
}
