import 'package:flutter/material.dart';
import 'package:pizza_first/row_column.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pizza_first',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyRowColumn(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Тестирование')),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: const Center(child: Text('Здесь что то будет')),
      ),
    );
  }
}
