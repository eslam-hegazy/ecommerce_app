import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';

import 'login_screen.dart';

class splash_screen extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return login_screen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                child: Center(
                  child: Lottie.asset("images/ecommerce.json"),
                ),
              ),
              Positioned(
                bottom: 15,
                right: 125,
                child: Center(
                  child: Text(
                    "Project",
                    style: TextStyle(
                      fontFamily: "FredokaOne",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.10),
          Expanded(
            child: SpinKitChasingDots(
              color: Color(0xFF052555),
            ),
          )
        ],
      ),
    );
  }
}
