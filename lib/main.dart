import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
                color: Colors.tealAccent,
                alignment: Alignment.center,
                child: const Text(
                    "Hello, Flutter",
                    style: TextStyle(color: Colors.black,
                      fontSize: 40,
                    ),
                    textDirection: TextDirection.ltr
                )
            ),
            flex: 1,
          ),
          Expanded(
              child: Container(
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container (
                        alignment: Alignment.center,
                        child: const Text(
                            "Hello, Flutter again",
                            style: TextStyle(color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                            textDirection: TextDirection.ltr
                        ),
                      ),
                      Container (
                        alignment: Alignment.center,
                        child: const Text(
                            "Yo, so many strings!",
                            style: TextStyle(color: Colors.white,
                              fontSize: 20,
                            ),
                            textDirection: TextDirection.ltr
                        ),
                      ),
                    ],
                  )
              ),
                  flex: 6
          )

        ]

    )

  );
}
