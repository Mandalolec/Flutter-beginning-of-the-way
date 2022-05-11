import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Person.dart';

class MyTextFieldName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newName) =>
          context.read<PersonList>().addPersonListName(newName),
    );
  }
}

class MyTextFieldCompanies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newCompanies) =>
          context.read<PersonList>().addPersonListCompanies(newCompanies),
    );
  }
}
