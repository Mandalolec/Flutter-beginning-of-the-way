import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pizza.dart';

class MyTextFieldName extends StatelessWidget {
  const MyTextFieldName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
              alignment: Alignment.bottomLeft,
              child: Text("Name",
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black))),
          Container(
            height: 35,
            width: 170,
            alignment: Alignment.bottomLeft,
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  suffixIcon: IconButton(
                    iconSize: 20,
                    icon: const Icon(Icons.clear_rounded),
                    onPressed: _controller.clear,
                  )),
              onChanged: (newName) =>
                  context.read<PizzaList>().addPizzaListName(newName),
            ),
          ),
        ],
      ),
    );
  }
}

class MyTextFieldPrice extends StatelessWidget {
  const MyTextFieldPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Column(
      children: [
        Container(
            alignment: Alignment.bottomLeft,
            child: Text("Price",
                style: GoogleFonts.sourceSansPro(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black))),
        SizedBox(
          height: 35,
          width: 170,
          child: TextField(
            controller: _controller,
            keyboardType: const TextInputType.numberWithOptions(
                decimal: true, signed: false),
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                suffixIcon: IconButton(
                  iconSize: 20,
                  icon: const Icon(Icons.clear_rounded),
                  onPressed: _controller.clear,
                )),
            onChanged: (newPrice) =>
                context.read<PizzaList>().addPizzaListCompanies(newPrice),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
              TextInputFormatter.withFunction((oldValue, newValue) {
                try {
                  final text = newValue.text;
                  if (text.isNotEmpty) double.parse(text);
                  return newValue;
                } catch (e) {
                  return oldValue;
                }
              }),
            ],
          ),
        ),
      ],
    );
  }
}
