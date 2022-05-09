import 'package:flutter/material.dart';

import 'list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pizza_first',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: ContainerList(),
    );
  }
}
