import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../printer/index.dart';

class Home extends StatelessWidget {
  void handleNavigation(BuildContext context) => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Printer()),
        )
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home screen"),
        ),
        body: Container(
            child: Column(children: [
          Center(
            child: Column(children: [
              Text("Navigation test"),
              ElevatedButton(
                onPressed: () {
                  handleNavigation(context);
                },
                child: Text("Navigate"),
              )
            ]),
          )
        ])));
  }
}
