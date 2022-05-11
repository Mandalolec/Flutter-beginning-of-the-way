import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Person.dart';

class ListPersonWrapper extends StatelessWidget {
  List<Person> pList = [];
  ListPersonWrapper({Key? key, required this.pList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: context.watch<PersonList>().getData.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pList[index].name),
            subtitle: Text(pList[index].companies),
          );
        });
  }
}
