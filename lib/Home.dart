import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'AddPage.dart';
import 'MyListWidget.dart';
import 'MyTextField.dart';
import 'Person.dart';

PersonList person = PersonList();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Person> personList = context.watch<PersonList>().getData;

    void openAddPersonPage() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AddPersonPage(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Список"),
      ),
      body: Column(
        children: [
          Expanded(flex: 9, child: ListPersonWrapper(pList: personList)),
          Expanded(
              flex: 1,
              child: Container(
                child: ElevatedButton(
                  child: Text("Добавить"),
                  onPressed: openAddPersonPage,
                ),
              ))
        ],
      ),
    );
  }
}
