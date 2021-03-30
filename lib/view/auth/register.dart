import 'package:eco1/view/auth/login_screen.dart';
import 'package:eco1/view/widgets/auth_button.dart';
import 'package:eco1/view/widgets/auth_text.dart';
import 'package:eco1/view/widgets/back_button.dart';
import 'package:eco1/view/widgets/title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../controller_view.dart';
import 'background.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                Container(
                  width: MediaQuery.of(context).size.width * 0.93,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: back_button(),
                      ),
                      title("Register!"),
                      SizedBox(width: 30),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: Lottie.asset("images/register.json"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Form(
                    key: _formkey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          auth_text(
                            Icon(
                              Icons.person,
                              color: Colors.blue.withOpacity(0.5),
                            ),
                            "Enter Your Name",
                            (value) {},
                            "Please Enter Your Name",
                            TextInputType.emailAddress,
                            false,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.03),
                          auth_text(
                            Icon(
                              Icons.email,
                              color: Colors.blue.withOpacity(0.5),
                            ),
                            "Enter Your Email",
                            (value) {},
                            "Please Enter Your Email",
                            TextInputType.emailAddress,
                            false,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.03),
                          auth_text(
                            Icon(
                              Icons.lock,
                              color: Colors.blue.withOpacity(0.5),
                            ),
                            "Enter Your Password",
                            (value) {},
                            "Please Enter Your Email",
                            TextInputType.visiblePassword,
                            true,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.03),
                          InkWell(
                            onTap: () {
                              if (_formkey.currentState.validate()) {
                                _formkey.currentState.save();
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (_) {
                                  return controller_view();
                                }));
                              }
                            },
                            child: auth_button("Register"),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already Have An Account ? ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return login_screen();
                                  }));
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: "FredokaOne"),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
