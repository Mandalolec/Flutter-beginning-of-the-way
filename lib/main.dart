import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Home.dart';
import 'Person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PersonList>(
      create: (context) => PersonList(),
      child: MaterialApp(
        title: 'pizza_first',
        theme: ThemeData(primarySwatch: Colors.amber),
        home: HomePage(),
      ),
    );
  }
}
