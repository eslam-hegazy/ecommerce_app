import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class auth_button extends StatelessWidget {
  final String text;

  auth_button(this.text);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.only(right: 50, left: 50, top: 18, bottom: 18),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            // fontWeight: FontWeight.bold,
            fontFamily: "FredokaOne",
          ),
        ),
      ),
    );
  }
}
