import 'package:eco1/model/model_card.dart';
import 'package:eco1/view/widgets/node4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class favorite_screen extends StatefulWidget {
  @override
  _favoriteState createState() => _favoriteState();
}

class _favoriteState extends State<favorite_screen> {
  List<model_card> list = [
    model_card(image: "images/b1.jpg", title: "title1", price: "\$123"),
    model_card(image: "images/b2.jpg", title: "title2", price: "\$150"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list.length == 0
          ? Container(
              color: Colors.white,
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  Lottie.asset("images/favorite.json"),
                  Text("Card Favorite Empty",
                      style: TextStyle(
                        fontFamily: "NewTegomin",
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ))
                ],
              )),
            )
          : Container(
              padding: EdgeInsets.only(right: 12, left: 12, top: 15),
              alignment: Alignment.center,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.18,
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage(list[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 19),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    list[index].title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "NotoSansHK",
                                    ),
                                  ),
                                  InkWell(
                                    ////////////////Stars
                                    onTap: () {},
                                    child: node4(
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(list[index].price,
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NewTegomin",
                                )),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }
}
