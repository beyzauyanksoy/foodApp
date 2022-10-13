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

  static Container optionStyle = Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
  );

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
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              ),
              Positioned(left: 4, child: Image.asset('assets/Home_light.png'))
            ],
          ),
          label: "",
          backgroundColor: Color(0xffFFFFFF),
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/Favorite.png',
              color: Colors.black,
            ),
            label: "",
            backgroundColor: Color(0xffFFFFFF)),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/fluent_cart.png',
              color: Colors.black,
            ),
            label: "",
            backgroundColor: Color(0xffFFFFFF)),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/User.png',
              color: Colors.black,
            ),
            label: "",
            backgroundColor: Color(0xffFFFFFF)),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
