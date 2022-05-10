import 'package:flutter/material.dart';

import 'list.dart';

class AddPerson extends StatefulWidget {
  String valueName = "";
  String valueCompanies = "";
  AddPerson({Key? key}) : super(key: key);
  @override
  State<AddPerson> createState() => _AddPersonState(valueName, valueCompanies);
}

class _AddPersonState extends State<AddPerson> {
  String valueName = "";
  String valueCompanies = "";
  _AddPersonState(this.valueName, this.valueCompanies);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Person")),
      body: Column(children: [
        TextField(
          onChanged: (String text) {
            valueName = text;
          },
        ),
        TextField(
          onChanged: (String text) {
            valueCompanies = text;
          },
        ),
        ElevatedButton(
          onPressed: () {
            openListPage();
          },
          child: const Text("Добавить"),
        ),
      ]),
    );
  }

  void openListPage() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => ContainerList(
              valueName: valueName, valueCompanies: valueCompanies),
        ),
        ModalRoute.withName("/list"));
  }
}
