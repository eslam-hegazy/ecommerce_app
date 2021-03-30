import 'package:eco1/model/model_card.dart';

import 'package:eco1/view/widgets/node5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class card_screen extends StatefulWidget {
  @override
  _card_screenState createState() => _card_screenState();
}

class _card_screenState extends State<card_screen> {
  List<model_card> list = [
    model_card(image: "images/b1.jpg", title: "title1", price: "\$123"),
    model_card(image: "images/b2.jpg", title: "title2", price: "\$150"),
    model_card(image: "images/b3.jpg", title: "title3", price: "\$200"),
    model_card(image: "images/b4.jpg", title: "title4", price: "\$300"),
    model_card(image: "images/b5.jpg", title: "title5", price: "\$600"),
    model_card(image: "images/b6.jpg", title: "title6", price: "\$400"),
    model_card(image: "images/b7.jpg", title: "title7", price: "\$500"),
  ];
  int Quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: list.length == 0
          ? Center(
              child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                ),
                Lottie.asset("images/empty.json"),
                Text("Card Empty",
                    style: TextStyle(
                      fontFamily: "NewTegomin",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ))
              ],
            ))
          : Column(
              children: [
                SizedBox(height: 12),
                Expanded(
                  child: Container(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
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
                                          ///////////////////Delete   Card
                                          onTap: () {},
                                          child: Icon(Icons.delete),
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
                                  Container(
                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: node5("+"),
                                        ),
                                        Card(
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              Quantity.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: node5("-"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "TOTAL",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "NewTegomin",
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "\$10000",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NewTegomin",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 100,
                            child: Text(
                              "CheckOut",
                              style: TextStyle(
                                // fontSize: 15,
                                color: Colors.white,
                                fontFamily: "NotoSansHK",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
