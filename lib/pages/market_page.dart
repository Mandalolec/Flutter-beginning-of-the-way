import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'add_pizza_page.dart';
import '/models/my_list_widget.dart';
import '/models/pizza.dart';

PizzaList person = PizzaList();

class MarketPage extends StatelessWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Pizza> pizzaList = context.watch<PizzaList>().getData;

    void openAddPizzaPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AddPizzaPage(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Image.asset(
          'assets/image/pizza_logo.png  ',
          scale: 12,
          alignment: Alignment.bottomCenter,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListPizzaWrapper(pList: pizzaList)),
    );
  }
}
