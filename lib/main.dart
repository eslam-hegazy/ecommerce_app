import 'package:eco1/view/auth/splash_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "MyApp",
      home: splash_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
