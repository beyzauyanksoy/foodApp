// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant_food_app/models/food_item_model.dart';
import 'package:restaurant_food_app/widgets/back_button.dart';

import '../widgets/favorite_button.dart';
import '../widgets/food_item.dart';
import '../widgets/food_start_image.dart';
import '../widgets/title.dart';
import '../widgets/title_button.dart';
import '../widgets/title_description.dart';
import '../widgets/view_cart.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  int _secilenindex = 0;

  List<String> titleNames = [
    "Burger",
    "Fries",
    "Coac",
    "Meals",
    "Drinks",
  ];
  List<FoodItemModel> foodItemList = [
    FoodItemModel(
        imageUrl: "assets/chicken.png",
        title: "Chicken Burger",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  ",
        price: 7,
        point: 4.5),
    FoodItemModel(
        imageUrl: "assets/potato.png",
        title: "Potato Corn Burger",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  ",
        price: 8,
        point: 4),
    FoodItemModel(
        imageUrl: "assets/supreme.png",
        title: "Supreme Veggie Burger",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  ",
        price: 6,
        point: 4.3),
    FoodItemModel(
        imageUrl: "assets/pizzaburger.png",
        title: "Pizza Burger",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  ",
        price: 10,
        point: 4.5),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              const FoodStartImage(),
              const BackButtontop(),
              FavoriteButton(),
              Padding(
                padding: const EdgeInsets.only(top: 275),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(19.39),
                      topRight: Radius.circular(19.39),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 21,
                      left: 26,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleTop(),
                          TitleDescription(),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 25),
                            child: SizedBox(
                              height: 29,
                              child: ListView.builder(
                                itemCount: titleNames.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _secilenindex = index;
                                        });
                                      },
                                      child: TitleButton(
                                        index: index,
                                        secilenindex: _secilenindex,
                                        titleName: titleNames[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Column(
                              children: foodItemList
                                  .map((e) => FoodItem(
                                        description: e.description,
                                        imageUrl: e.imageUrl,
                                        point: e.point,
                                        price: e.price,
                                        title: e.title,
                                      ))
                                  .toList())
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                child: ViewCart(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
