import 'dart:math';

import 'package:flutter/material.dart';

import '../../components/button.dart';
import '../../utils/colors.dart';
import '../printer/index.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController _email;
  TextEditingController _password;

  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void handleNavigation(BuildContext context) => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Printer()),
        )
      };

  Widget renderInput({label, obscureText = false, controller}) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  label,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ))
          ],
        ),
        TextField(
          controller: controller,
          obscureText: obscureText,
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: label,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // status bar color
        brightness: Brightness.light, // status bar brightness
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    child: Image.asset("src/assets/images/logo.png"),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: renderInput(label: "Email", controller: _email),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: renderInput(
                        label: "Password",
                        obscureText: true,
                        controller: _password),
                  ),
                  Container(
                    child: Row(children: [
                      Button(
                        label: "login",
                        onPress: () {
                          handleNavigation(context);
                        },
                      )
                    ]),
                  ),
                ],
              ))),
    );
  }
}
