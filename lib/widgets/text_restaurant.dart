import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextRestaurant extends StatefulWidget {
  const TextRestaurant({super.key});

  @override
  State<TextRestaurant> createState() => _TextRestaurantState();
}

class _TextRestaurantState extends State<TextRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27.15, right: 29.82, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Restaurant',
            style: TextStyle(
                color: Color(0xff010E16),
                fontSize: 17.45,
                fontWeight: FontWeight.w500),
          ),
          Text(
            'Show all',
            style: TextStyle(
                color: Color(0xff459FCA),
                fontSize: 11.63,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
