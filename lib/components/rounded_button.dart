import 'package:flutter/material.dart';


class RoundedWidget extends StatelessWidget {
  RoundedWidget({required this.colour, required this.title, required this.onPressed}) {}

  final Color colour;
  late final String title;
  late final Function onPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            onPressed();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}