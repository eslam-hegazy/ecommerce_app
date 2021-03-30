import 'package:eco1/view/widgets/Text_Item.dart';
import 'package:eco1/view/widgets/add_card.dart';
import 'package:eco1/view/widgets/node3.dart';
import 'package:eco1/view/widgets/node4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details_view extends StatefulWidget {
  @override
  _details_viewState createState() => _details_viewState();
}

class _details_viewState extends State<details_view> {
  int Quantity = 1;
  double price = 123;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: node4(
                      Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      ),
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/b1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Name Of Product",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "NotoSansHK",
                    fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextItem(text: "Details"),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Cloud Firestore is a flexible, scalable database for mobile, web, and server development from Firebase and Google Cloud Platform. Cloud Firestore also offers seamless integration with other Firebase and Google Cloud Platform products, including Cloud Functions.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "NewTegomin",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Quantity",
                            style: TextStyle(
                              fontFamily: "NotoSansHK",
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Quantity++;
                                  });
                                },
                                child: node3("+"),
                              ),
                              Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
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
                                onTap: () {
                                  setState(() {
                                    if (Quantity > 1) {
                                      Quantity--;
                                    } else {
                                      Quantity = 1;
                                    }
                                  });
                                },
                                child: node3("-"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.height * 0.10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        TextItem(text: "Price:"),
                        SizedBox(width: 15),
                        Text(
                          "\$" + (Quantity * price).toString(),
                          style: TextStyle(
                              fontFamily: "NewTegomin",
                              fontWeight: FontWeight.w900,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    add_card(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}
