import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant_food_app/widgets/newLabel.dart';

class FoodItem extends StatefulWidget {
  final String imageUrl;
  final String foodName;
  final String foodPoint;
  final String mins;
  final String km;
  final bool status;
  const FoodItem({
    super.key,
    required this.imageUrl,
    required this.foodName,
    required this.foodPoint,
    required this.mins,
    required this.km,
    required this.status,
  });

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color(0x29000000),
              offset: Offset(2, 3),
              blurRadius: 6,
              spreadRadius: 0)
        ],
      ),
      width: 350,
      height: 110,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              widget.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 6.79,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.foodName,
                  style: TextStyle(
                      color: Color(0xff010E16),
                      fontWeight: FontWeight.w500,
                      fontSize: 13.57),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.3, bottom: 22.78),
                  child: Row(
                    children: [
                      Image.asset("assets/star.png"),
                      Text(
                        widget.foodPoint,
                        style: TextStyle(
                          color: Color(0xffB3B3B3),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/carbon_time.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.79, right: 15.17),
                      child: Text(
                        widget.mins,
                        style: TextStyle(
                            color: Color(0xffB3B3B3),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Image.asset('assets/dot.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.79),
                      child: Text(
                        widget.km,
                        style: TextStyle(
                            color: Color(0xffB3B3B3),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          widget.status
              ? NewLabel()
              : SizedBox(
                  width: 54.29,
                )
        ],
      ),
    );
  }
}
