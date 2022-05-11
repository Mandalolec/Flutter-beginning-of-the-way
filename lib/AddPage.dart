import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Home.dart';
import 'MyTextField.dart';
import 'Person.dart';

PersonList person = PersonList();

class AddPersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void openHomePage() {
      Provider.of<PersonList>(context, listen: false)
          .addPersonList(person.name, person.companies);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body: Column(children: <Widget>[
        Container(
          child: MyTextFieldName(),
        ),
        Container(
          child: MyTextFieldCompanies(),
        ),
        Container(
          child: ElevatedButton(
              onPressed: () => openHomePage(), child: const Text("Нажми")),
        ),
      ]),
    );
  }
}
