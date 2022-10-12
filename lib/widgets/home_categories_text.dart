import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeCategoriesText extends StatefulWidget {
  const HomeCategoriesText({super.key});

  @override
  State<HomeCategoriesText> createState() => _HomeCategoriesTextState();
}

class _HomeCategoriesTextState extends State<HomeCategoriesText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23.27,left: 27.15,right: 29.82),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Categories",style: TextStyle(color: Color(0xff010E16),fontSize: 17.45,fontWeight: FontWeight.w500),),
          Text('Show all',style: TextStyle(color: Color(0xff459FCA),fontSize: 11.63,)
      )],
      ),
    );
  }
}