import 'package:flutter/material.dart';

class BackButtontop extends StatelessWidget {
  const BackButtontop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 15,
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
              color: Color(0xffD9D9D9).withOpacity(0.50)),
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
