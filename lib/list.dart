import 'package:flutter/material.dart';

import 'AddingPage.dart';
import 'Person.dart';

class ContainerList extends StatefulWidget {
  String valueName = "";
  String valueCompanies = "";
  ContainerList({Key? key, this.valueName = "", this.valueCompanies = ""})
      : super(key: key);
  @override
  State<ContainerList> createState() =>
      _ContainerListState(valueName, valueCompanies);
}

class _ContainerListState extends State<ContainerList> {
  String valueName = "";
  String valueCompanies = "";
  _ContainerListState(this.valueName, this.valueCompanies);
  final List<Person> personList = <Person>[
    Person("Кирилл", "СГМК"),
    Person("Леха", "ЕВРАЗ ЗСМК"),
    Person("Антон", "none"),
    Person("Женя", "Актоника"),
  ];
  void addPersonList(String name, String companies) {
    personList.add(Person(name, companies));
  }

  int _selectedIndex = -1;

  void openAddingPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddPerson(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            _selectedIndex == -1
                ? "Не выбрано"
                : "Выбрано: ${personList[_selectedIndex].name}, $valueName, $valueCompanies",
            style: const TextStyle(fontSize: 20)),
      ),
      body: Column(
        children: [
          Expanded(flex: 9, child: _selectedPersonList()),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      iconSize: 40,
                      splashRadius: 50,
                      splashColor: Colors.cyanAccent[300],
                      alignment: Alignment.center,
                      icon: const Icon(Icons.check_box),
                      onPressed: () {
                        setState(() {
                          addPersonList(valueName, valueCompanies);
                        });
                      }),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    iconSize: 40,
                    splashRadius: 50,
                    splashColor: Colors.cyanAccent[300],
                    alignment: Alignment.center,
                    icon: const Icon(Icons.add_box),
                    onPressed: openAddingPage,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
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
