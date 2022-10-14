import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodStartImage extends StatefulWidget {
  const FoodStartImage({super.key});

  @override
  State<FoodStartImage> createState() => _FoodStartImageState();
}

class _FoodStartImageState extends State<FoodStartImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/food_start_image.png");
  }
}