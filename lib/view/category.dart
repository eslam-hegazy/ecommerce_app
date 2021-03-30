import 'package:eco1/model/model_card.dart';
import 'package:eco1/view/details_view.dart';
import 'package:eco1/view/widgets/node6.dart';

import 'package:flutter/material.dart';

class category extends StatelessWidget {
  final String title;
  List<model_card> list = [
    model_card(image: "images/b1.jpg", title: "title1", price: "\$123"),
    model_card(image: "images/b2.jpg", title: "title2", price: "\$150"),
    model_card(image: "images/b3.jpg", title: "title3", price: "\$200"),
    model_card(image: "images/b4.jpg", title: "title4", price: "\$300"),
    model_card(image: "images/b5.jpg", title: "title5", price: "\$600"),
    model_card(image: "images/b6.jpg", title: "title6", price: "\$400"),
    model_card(image: "images/b7.jpg", title: "title7", price: "\$500"),
  ];

  category(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontFamily: "NewTegomin",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15),
        itemCount: list.length,
        itemBuilder: (BuildContext ctx, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return details_view();
              }));
            },
            child: node6(list[index].image, list[index].title, "Description",
                list[index].price),
          );
        },
      ),
    );
  }
}
