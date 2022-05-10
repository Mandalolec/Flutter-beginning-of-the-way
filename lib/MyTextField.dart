import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Person.dart';

class MyTextFieldName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newData) =>
          context.read<PersonList>().addPersonListName(newData),
    );
  }
}

class MyTextFieldCompanies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newData) =>
          context.read<PersonList>().addPersonListCompanies(newData),
    );
  }
}
