import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleDescription extends StatelessWidget {
  const TitleDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.64),
      child: Row(
        children: const [
          Icon(
            Icons.star,
            color: Color(0xffFFD600),
          ),
          Text(
            "4.5",
            style: TextStyle(
              color: Color(0xffb3b3b3),
              fontSize: 15.51,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 5),
            child: Icon(
              CupertinoIcons.clock,
              color: Color(0xff9B9B9B),
            ),
          ),
          Text(
            "25-35 mins",
            style: TextStyle(
              color: Color(0xffb3b3b3),
              fontSize: 15.51,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 5),
            child: Icon(
              CupertinoIcons.circle_fill,
              size: 10,
              color: Color(0xffD9D9D9),
            ),
          ),
          Text(
            "8 km",
            style: TextStyle(
              color: Color(0xffb3b3b3),
              fontSize: 15.51,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
