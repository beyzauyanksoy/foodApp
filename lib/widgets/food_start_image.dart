import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'icon_button.dart';

class FoodStartImage extends StatefulWidget {
  const FoodStartImage({super.key});

  @override
  State<FoodStartImage> createState() => _FoodStartImageState();
}

class _FoodStartImageState extends State<FoodStartImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/food_start_image.png"),
        Positioned(child: IconButton())
      ],
    );
  

  }
}