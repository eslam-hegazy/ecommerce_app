import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class node4 extends StatelessWidget {
  final Icon icon;

  node4(this.icon);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.black.withOpacity(0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(500),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: icon,
      ),
    );
  }
}
