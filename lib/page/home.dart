import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant_food_app/widgets/categories_listview.dart';
import 'package:restaurant_food_app/widgets/fooditem.dart';
import 'package:restaurant_food_app/widgets/home_appbar.dart';
import 'package:restaurant_food_app/widgets/home_banner.dart';
import 'package:restaurant_food_app/widgets/home_bottom_navigation_bar.dart';
import 'package:restaurant_food_app/widgets/home_categories_text.dart';
import 'package:restaurant_food_app/widgets/home_search.dart';
import 'package:restaurant_food_app/widgets/text_restaurant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imageUrl = [
    "assets/burgerKing.png",
    "assets/pizzania.png",
    "assets/pankcake.png",
  ];

  List<String> foodName = [
    "Burger King",
    "Pizzania",
    "Pankcake",
  ];
  List<String> foodPoint = ["4,5", "4.6", "4.2"];
  List<String> mins = [
    "25 - 35 mins",
    "20-25 mins",
    "25-35 mins",
  ];
  List<String> km = [
    "7 km",
    "8 km",
    "7 km",
  ];
  List<bool> status = [
    true,
    false,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppbar(),
            HomeSearch(),
            HomeBanner(),
            HomeCategoriesText(),
            CategoriesListView(),
            TextRestaurant(),
            Container(
            
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: imageUrl.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.8),
                    child: Column(
                      children: [
                        FoodItem(
                            imageUrl: imageUrl[index],
                            foodName: foodName[index],
                            foodPoint: foodPoint[index],
                            mins: mins[index],
                            km: km[index],
                            status: status[index])
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: HomeBottomNavigationBar(),
    );
  }
}
