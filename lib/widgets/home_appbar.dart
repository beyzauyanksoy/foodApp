import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppbar extends StatefulWidget {
  const HomeAppbar({super.key});

  @override
  State<HomeAppbar> createState() => _HomeAppbarState();
}

class _HomeAppbarState extends State<HomeAppbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: AppBar(
        elevation: 0,
        
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hi Noha!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Image.asset("assets/location.png"),
                    const Text(
                      'Location, Main City-Napgur',
                      style: TextStyle(color: Color(0xffB3B3B3), fontSize: 13),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, left: 3),
                      child: Image.asset("assets/bi_chevron-down.png"),
                    )
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/Bell_fill.png',width: 40,),
                Positioned(
                  top: 0 ,
                  right: 8,
                  child: Image.asset('assets/redcircle.png',width: 16,),

                  
                  ),
                  Positioned(
                    top: 3,
                    right: 13,
                    child: Text('5',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),)
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
