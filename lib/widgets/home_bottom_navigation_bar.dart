import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  State<HomeBottomNavigationBar> createState() =>
      _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> box = [
    Image.asset("assets/blackcircle.png"),
    Image.asset("assets/whitecircle.png"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Container(
                width: 40,
                height: 40,
                child: _selectedIndex == 0 ? box[0] : box[1],
              ),
              Positioned(
                left: 4,
                child: Center(
                  child: Image.asset(
                    'assets/Home_light.png',
                    color: Color(0xff9B9B9B),
                  ),
                ),
              ),
            ],
          ),
          label: "",
          //backgroundColor: Color(0xffFFFFFF),
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Container(
                width: 40,
                height: 40,
                child: _selectedIndex == 1 ? box[0] : box[1],
              ),
              Positioned(
                top: 3,
                left: 5,
                child: Image.asset('assets/Favorite.png'),
              ),
            ],
          ),
          label: "",
          //backgroundColor: Color(0xffFFFFFF),
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Container(
                width: 40,
                height: 40,
                child: _selectedIndex == 2 ? box[0] : box[1],
              ),
              Positioned(
                top: 4,
                left: 2,
                child: Image.asset('assets/fluent_cart.png'),
              ),
            ],
          ),
          label: "",
          //backgroundColor: Color(0xffFFFFFF),
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Container(
                width: 40,
                height: 40,
                child: _selectedIndex == 3 ? box[0] : box[1],
              ),
              Positioned(
                left: 4,
                child: Image.asset(
                  'assets/User.png',
                ),
              ),
            ],
          ),
          label: "",
          //backgroundColor: Color(0xffFFFFFF),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
