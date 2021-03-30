import 'package:eco1/view/auth/register.dart';
import 'package:eco1/view/widgets/auth_button.dart';
import 'package:eco1/view/widgets/auth_text.dart';
import 'package:eco1/view/widgets/title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../controller_view.dart';
import 'background.dart';

class login_screen extends StatelessWidget {
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
                title("Login!"),
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.40,
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
                              Icons.email,
                              color: Colors.blue.withOpacity(0.5),
                            ),
                            "Peeeely96@gmail.com",
                            (value) {},
                            "Please Enter Your Gmail",
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
                            "*******************",
                            (value) {},
                            "Please Enter Your Password",
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
                            child: auth_button("Login"),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't Have An Account ? ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return register();
                                  }));
                                },
                                child: Text(
                                  "Register",
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
