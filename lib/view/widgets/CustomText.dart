import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final Icon icon;
  final String text;
  final Function fun;

  CustomText({
    @required this.icon,
    @required this.text,
    @required this.fun,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        onSaved: fun,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: text,
          hintStyle:
              TextStyle(fontFamily: "NewTegomin", fontWeight: FontWeight.bold),
          enabledBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
