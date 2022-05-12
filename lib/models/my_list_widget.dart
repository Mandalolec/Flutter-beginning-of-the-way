import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pizza.dart';

// ignore: must_be_immutable
class ListPizzaWrapper extends StatelessWidget {
  List<Pizza> pList = [];
  ListPizzaWrapper({Key? key, required this.pList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: context.watch<PizzaList>().getData.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 32);
        },
        itemBuilder: (BuildContext context, int index) {
          return Material(
            elevation: 20,
            shadowColor: Colors.black26,
            borderRadius: BorderRadius.circular(15),
            child: ListTile(
              title: Text(pList[index].name,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 18, fontWeight: FontWeight.w600)),
              trailing: Text("\$${pList[index].price}",
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.red[400])),
              leading: Image.asset('assets/image/pizza0.png', scale: 12),
            ),
          );
        });
  }
}
