import 'package:eco1/view/widgets/divider.dart';
import 'package:eco1/view/widgets/item_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 12, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500),
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.height * 0.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/164341896_928394941325510_5277278858074814550_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=pEZnkNV-NTgAX_SNGmE&_nc_ht=scontent-hbe1-1.xx&oh=6a9dcdc385cfff62695e46acd8558059&oe=60856C97"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "User Name",
                          style: TextStyle(
                            fontFamily: "NotoSansHK",
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "eslamheg968@gmail.com",
                          style: TextStyle(
                            fontFamily: "NewTegomin",
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              item_profile("images/edit.png", "Edit Profile"),
              divider(),
              item_profile("images/map.png", "Shipping Address"),
              divider(),
              item_profile("images/clock.png", "Order History"),
              divider(),
              item_profile("images/credit-card.png", "Cards"),
              divider(),
              item_profile("images/log-out.png", "Log Out"),
              SizedBox(height: 7),
            ],
          ),
        ),
      ),
    );
  }
}
