import 'package:flutter/material.dart';

import 'screens/home/index.dart';
import 'screens/login/index.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.red), home: Login());
  }
}
