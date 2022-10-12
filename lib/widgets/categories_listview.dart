import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

List<String> images = [
  "assets/pizza.png",
  "assets/pancake.png",
  "assets/sandwich.png",
  "assets/icecream.png",
  "assets/noodle.png",
];
List<String> text = [
  "Pizza",
  "Pan-cake",
  "Sandwich",
  "Ice-cream",
  "Noodle",
];

class _CategoriesListViewState extends State<CategoriesListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.pink,
      height: 130,
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 15, left: 5),
            child: Container(
              //color: Colors.yellow,
              width: 85,
              child: Column(
                children: [
                  Image.asset(
                    images[index],
                  ),
                  Text(text[index])
                ],
              ),
            ),
          );
        },
      ),
    );
    // return ListView.builder(
    //   itemCount: 1,
    //   scrollDirection: Axis.vertical,
    //    itemBuilder: (BuildContext context, int index) {
    //       return  Column(
    //         children: [
    //             Container(
    //               child: Image.asset("assets/pizza.png"),

    //             ),
    //         ],
    //       );

    //     },

    // );
  }
}
