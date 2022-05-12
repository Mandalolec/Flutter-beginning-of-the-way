import 'package:flutter/material.dart';

class Pizza {
  String name = "";
  String price = "";
  Pizza(this.name, this.price);
  @override
  toString() => '{$name, $price}';
}

class PizzaList with ChangeNotifier {
  List<Pizza> pizzaList = <Pizza>[
    Pizza("Original", "8"),
    Pizza("Buffalo", "10"),
    Pizza("San Marzano", "6"),
    Pizza("Peperoni", "11"),
    Pizza("Mexican", "13"),
  ];

  List<Pizza> get getData => pizzaList;
  String name = "";
  String price = "";
  void addPizzaListName(String newName) {
    name = newName;
    notifyListeners();
  }

  void addPizzaListCompanies(String newPrice) {
    price = newPrice;
    notifyListeners();
  }

  void addPizzaList(newName, newPrice) {
    newName = name;
    newPrice = price;
    pizzaList.add(Pizza(name, price));
    notifyListeners();
  }
}
