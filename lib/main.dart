import 'package:flutter/material.dart';
import 'package:google_maps/homemap.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (_) => const HomeMap(),
    },
  ));
}
