import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'MyListWidget.dart';
import 'MyTextField.dart';
import 'Person.dart';

PersonList person = new PersonList();

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final widget =
        ListPersonWrapper(pList: context.watch<PersonList>().getData);
    Widget PersonL = widget;

    return Scaffold(
      appBar: AppBar(
        title: Text("Avqvq"),
      ),
      body: PersonL,
    );
  }

  //Expanded(
  //flex: 1,
  //child: ElevatedButton(
  // onPressed: () => person.addPersonList,
} //child: Text("Нажми"),
