import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodItem extends StatefulWidget {
  final String imageUrl;
  const FoodItem({super.key, required this.imageUrl});

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      width: 360,
      height: 120,
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              widget.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.79, left: 12.6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Burger Menü Adı',
                  style: TextStyle(
                      color: Color(0xff010E16),
                      fontWeight: FontWeight.w500,
                      fontSize: 13.57),
                ),
                Row(
                  children: [
                    Image.asset("assets/star.png"),
                    Text('4.5',style: TextStyle(color: Color(0xffB3B3B3),),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
