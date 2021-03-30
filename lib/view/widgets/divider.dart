import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      alignment: Alignment.center,
      child: Divider(),
    );
  }
}
