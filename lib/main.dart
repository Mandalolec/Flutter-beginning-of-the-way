import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/market_page.dart';
import 'models/pizza.dart';

void main() {
  runApp(const PizzaMarket());
}

class PizzaMarket extends StatelessWidget {
  const PizzaMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PizzaList>(
      create: (context) => PizzaList(),
      child: const MaterialApp(
        title: 'pizza_first',
        home: MarketPage(),
      ),
    );
  }
}
