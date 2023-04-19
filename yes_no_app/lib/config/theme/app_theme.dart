import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 97, 1, 251);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,

];

class Apptheme {
  ThemeData theme() {
    return ThemeData(useMaterial3: true);
  }
}
