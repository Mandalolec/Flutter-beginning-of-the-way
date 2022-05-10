import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Person {
  String name = "";
  String companies = "";
  Person(this.name, this.companies, Type string);
  @override
  toString() => '{$name, $companies}';
}

class PersonList with ChangeNotifier {
  List<Person> personList = <Person>[
    Person("Кирилл", "СГМК", String),
    Person("Леха", "ЕВРАЗ ЗСМК", String),
    Person("Антон", "none", String),
    Person("Женя", "Актоника", String),
  ];

  List<Person> get getData => personList;
  String name = "";
  String companies = "";
  void addPersonListName(String newName) {
    //personList.add(Person(name, companies, String));
    name = newName;
    notifyListeners();
  }

  void addPersonListCompanies(String newCompanies) {
    //personList.add(Person(name, companies, String));
    companies = newCompanies;
    notifyListeners();
  }

  void addPersonList(name, companies) {
    personList.add(Person(name, companies, String));
  }
}
