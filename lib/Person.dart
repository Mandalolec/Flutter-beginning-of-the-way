import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Person {
  String name = "";
  String companies = "";
  Person(this.name, this.companies);
  @override
  toString() => '{$name, $companies}';
}

class PersonList with ChangeNotifier {
  List<Person> personList = <Person>[
    Person("Кирилл", "СГМК"),
    Person("Леха", "ЕВРАЗ ЗСМК"),
    Person("Антон", "ООО безработный"),
    Person("Женя", "Актоника"),
  ];

  List<Person> get getData => personList;
  String name = "";
  String companies = "";
  void addPersonListName(String newName) {
    name = newName;
    notifyListeners();
  }

  void addPersonListCompanies(String newCompanies) {
    companies = newCompanies;
    notifyListeners();
  }

  void addPersonList(newName, newCompanies) {
    newName = name;
    newCompanies = companies;
    personList.add(Person(name, companies));
    notifyListeners();
  }
}
