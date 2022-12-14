import 'package:flutter/material.dart';

class Utilities {
  static TextStyle header1() {
    return const TextStyle(color: Colors.black);
  }

  static TextStyle header2() {
    return const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17);
  }

  static TextStyle header3() {
    return const TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);
  }
}
