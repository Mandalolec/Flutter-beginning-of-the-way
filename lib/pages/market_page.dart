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
    List<Pizza> pizzaList = context.watch<PizzaList>().getData;

    void openAddPizzaPage() {
      Navigator.pushReplacement(
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
          'assets/image/pizza_logo.png',
          scale: 12,
          alignment: Alignment.bottomCenter,
        ),
        title: Row(
          children: [
            Expanded(
                flex: 5,
                child: Text("Pizza Market",
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ))),
            Expanded(
                flex: 1,
                child: Container(
                  height: 35,
                  margin: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    heroTag: "Market",
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: Colors.red[400],
                    child: const Icon(Icons.add_outlined, color: Colors.white),
                    onPressed: openAddPizzaPage,
                  ),
                ))
          ],
        ),
      ),
      body: Container(
          margin: const EdgeInsets.all(24.0),
          child: ListPizzaWrapper(pList: pizzaList)),
    );
  }
}
