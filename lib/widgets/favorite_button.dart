import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      top: 0,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xffD9D9D9).withOpacity(0.50)),
          child: const Icon(
            Icons.favorite_border,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
