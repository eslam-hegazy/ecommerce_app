import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class item_profile extends StatelessWidget {
  final String icon;
  final String title;

  item_profile(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 30,
                  height: 30,
                  child: Image.asset(icon, height: 20, width: 20),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(width: 13),
              Text(title,
                  style: TextStyle(
                      fontFamily: "NewTegomin", fontWeight: FontWeight.bold)),
            ],
          ),
          Icon(Icons.keyboard_arrow_right_rounded),
        ],
      ),
    );
  }
}
