import 'package:flutter/cupertino.dart';

class TextItem extends StatelessWidget {
  final String text;

  TextItem({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "",
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
