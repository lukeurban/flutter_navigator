import 'package:flutter/material.dart';
import 'package:navigator/app/app.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: App(),
  ));
}
