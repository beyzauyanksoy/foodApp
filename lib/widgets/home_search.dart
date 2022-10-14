import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 15,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: 0)
              ],
            ),
            width: 280,
            child: Container(
              alignment: Alignment.center,
              height: 55,
              child: const TextField(
                //obscureText: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search Your food or Restaurant',
                    hintStyle:
                        TextStyle(color: Color(0xffCFCFCF), fontSize: 13),
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: 0)
              ],
              borderRadius: BorderRadius.circular(10),
              //border: Border.all(color: Colors.grey),
            ),
            width: 70,
            height: 55,
            child: Image.asset(
              "assets/filter.png",
              color: const Color(0xff035176),
            ),
          )
        ],
      ),
    );
  }
}
