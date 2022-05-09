import 'package:flutter/material.dart';

class Person {
  String name;
  String comanies;
  Person(this.name, this.comanies);
}

class ContainerList extends StatefulWidget {
  @override
  State<ContainerList> createState() => _ContainerListState();
}

class _ContainerListState extends State<ContainerList> {
  final List<Person> personList = <Person>[
    Person("Кирилл", "СГМК"),
    Person("Леха", "ЕВРАЗ ЗСМК"),
    Person("Антон", "none"),
    Person("Женя", "Актоника"),
  ];
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            _selectedIndex == -1
                ? "Не выбрано"
                : "Выбрано: ${personList[_selectedIndex].name}",
            style: const TextStyle(fontSize: 20)),
      ),
      body: _selectedPersonList(),
    );
  }

  Widget _selectedPersonList() => SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: personList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              title: Text(
                personList[index].name,
                style: const TextStyle(fontSize: 20),
              ),
              selected: index == _selectedIndex,
              selectedTileColor: Colors.black26,
              leading: const Icon(Icons.face),
              trailing: const Icon(Icons.phone),
              subtitle: Text("Работает в ${personList[index].comanies}"),
            );
          },
        ),
      );
}
