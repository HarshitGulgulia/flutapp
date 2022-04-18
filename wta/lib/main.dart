import 'package:flutter/material.dart';
import 'package:wta/pages/home.dart';
import 'package:wta/pages/loading.dart';
import 'package:wta/pages/select_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const SelectLocation(),
    },
  ));
}

