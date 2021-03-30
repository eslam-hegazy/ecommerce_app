import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class back_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(500),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 45,
        width: 45,
        child: Text(
          "<",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
