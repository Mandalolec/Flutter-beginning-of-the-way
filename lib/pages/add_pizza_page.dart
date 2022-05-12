import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'market_page.dart';
import '/models/my_text_field_widget.dart';
import '/models/pizza.dart';

PizzaList pizza = PizzaList();

class AddPizzaPage extends StatelessWidget {
  const AddPizzaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void openHomePage() {
      Provider.of<PizzaList>(context, listen: false)
          .addPizzaList(pizza.name, pizza.price);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MarketPage(),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Image.asset(
          'assets/image/pizza_logo.png',
          scale: 12,
          alignment: Alignment.bottomRight,
        ),
        title: Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: FloatingActionButton(
                heroTag: "Add",
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                backgroundColor: Colors.red[50],
                child: const Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.red, size: 16),
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MarketPage(),
                  ),
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(20),
                child: Text("Add pizza",
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black))),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 550,
          width: 350,
          margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
          child: Column(
            children: [
              Material(
                elevation: 20,
                shadowColor: Colors.black26,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          'assets/image/pizza0.png',
                          scale: 5,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(children: const <Widget>[
                          MyTextFieldName(),
                          MyTextFieldCompanies(),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: FractionalOffset.bottomCenter,
                  child: SizedBox(
                    width: 320,
                    child: FloatingActionButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: Colors.red[400],
                        onPressed: () => openHomePage(),
                        child: const Text("Save")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
