import 'package:eco1/model/model_item1.dart';
import 'package:eco1/view/category.dart';

import 'package:eco1/view/widgets/CustomText.dart';
import 'package:eco1/view/widgets/Text_Item.dart';
import 'package:eco1/view/widgets/node1.dart';
import 'package:eco1/view/widgets/node2.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details_view.dart';

class home_screen extends StatelessWidget {
  List<model_item1> item1 = [
    model_item1("images/burger.png", "burger".toUpperCase()),
    model_item1("images/chicken-bucket.png", "bucket".toUpperCase()),
    model_item1("images/food-delivery.png", "delivery".toUpperCase()),
    model_item1("images/food-tray.png", "tray".toUpperCase()),
    model_item1("images/french-fries.png", "fries".toUpperCase()),
    model_item1("images/pizza.png", "pizza".toUpperCase()),
    model_item1("images/soft-drink.png", "drink".toUpperCase()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              CustomText(
                icon: Icon(Icons.search),
                text: "Searsh",
                fun: (value) {},
              ),
              SizedBox(height: 30),
              TextItem(text: "Categories"),
              SizedBox(height: 8),
              Container(
                height: 150,
                alignment: Alignment.center,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: item1.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return category(item1[index].title);
                        }));
                      },
                      child: node1(
                          icon: item1[index].icon, title: item1[index].title),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextItem(text: "Best Selling"),
                  TextItem(text: "See all"),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                alignment: Alignment.center,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: item1.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return details_view();
                        }));
                      },
                      child: node2(
                          title: item1[index].title,
                          type: "DesCriptions",
                          price: "\$120"),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
