import 'package:flutter/material.dart';

void main() {
  runApp(
    const Align(
      alignment: Alignment.center,
      child: Text(
        "Привет Flutter!",
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
      ),
    ),

  );
}
