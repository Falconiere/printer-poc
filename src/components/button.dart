import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback onPress;

  Button({this.label, this.onPress});

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.red[100];
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width - 40,
        height: 40,
        child: ElevatedButton(
          child: Text(this.label),
          onPressed: () => {this.onPress()},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(getColor)),
        ));
  }
}
