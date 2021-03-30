import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class node2 extends StatelessWidget {
  final String title;
  final String type;
  final String price;

  node2({@required this.title, @required this.type, @required this.price});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage("images/b1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          Text(
            type,
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          SizedBox(height: 5),
          Text(
            price,
            style: TextStyle(
                color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
