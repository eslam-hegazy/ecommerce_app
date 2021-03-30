import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class add_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.black,
      child: Container(
        padding: EdgeInsets.only(
          right: 19,
          left: 19,
          top: 12,
          bottom: 12,
        ),
        child: Text(
          "Add To Card",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "NotoSansHK",
          ),
        ),
      ),
    );
  }
}
