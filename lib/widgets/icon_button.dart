import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconButton extends StatefulWidget {
  const IconButton({super.key});

  @override
  State<IconButton> createState() => _IconButtonState();
}

class _IconButtonState extends State<IconButton> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Image.asset('assets/favoriteButton.png')
      ],
      leading: Image.asset('assets/backButton.png'),
   
    );
  }
}