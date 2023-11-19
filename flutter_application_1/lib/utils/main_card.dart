import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/quotes.dart';

class MainCard extends StatefulWidget {
  const MainCard({
    super.key,
  });

  @override
  State<MainCard> createState() => _MainCardState();
}

String quotes = "Press button to start";
var i = 0;
var quote = GetQuotes();
getQuotesFunc() {
  quote.getQuotes();
}

var buttonText = "Press to start";

bool buttonStat = false;

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          quotes,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        TextButton(
          style: ButtonStyle(),
          onPressed: () {
            setState(() {
              if (!buttonStat) {
                quote.getQuotes();
                buttonStat = !buttonStat;
                quotes = "Refresh your life";
              } else {
                if (i == quote.actualNotes.length - 1) {
                  quote.getQuotes();
                  i = 0;
                }
                quotes = quote.actualNotes[i];
                i++;
              }
            });
          },
          child: (buttonStat)
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Refresh",
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.refresh,
                      color: Colors.black,
                    ),
                  ],
                )
              : const Text(
                  "Get started",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
        )
      ],
    );
  }
}
