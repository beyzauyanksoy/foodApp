import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.51),
      child: Stack(
        children: [
          Image.asset("assets/home_banner.png"),
          const Positioned(
            top: 14.54,
            left: 23.27,
            child: Text(
              'Get Special Discount',
              style: TextStyle(
                  color: Color(0xff9B9B9B),
                  fontSize: 15.51,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            top: 49.45,
            left: 23.27,
            child: Text(
              'up to 75%',
              style: TextStyle(color: Color(0XFFF5F5F5), fontSize: 34.9),
            ),
          ),
          Positioned(
            bottom: 17.45,
            left: 24.24,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
              ),
             
              width: 116.34,
              height: 25.21,
              child: Center(
                child: Text(
                  'Claim Voucher',
                  style: TextStyle(
                    color: Color(0xff010E16),
                    fontSize: 11.63,
                    fontWeight:FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
