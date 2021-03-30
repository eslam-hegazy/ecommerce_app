import 'package:flutter/cupertino.dart';

class title extends StatelessWidget {
  final String text;

  title(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
          style: TextStyle(
              fontFamily: "FredokaOne",
              fontSize: 25,
              fontWeight: FontWeight.bold)),
    );
  }
}
