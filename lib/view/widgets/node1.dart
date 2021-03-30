import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class node1 extends StatelessWidget {
  final String icon;
  final String title;

  node1({@required this.icon, @required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(500),
            ),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(500),
                image: DecorationImage(
                  image: AssetImage(icon),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(title,
              style: TextStyle(
                  fontFamily: "NewTegomin", fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
