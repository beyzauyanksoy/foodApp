import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewCart extends StatelessWidget {
  const ViewCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 20,
        height: 68.84,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 20,
              height: 68.84,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19.39),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x56000000),
                    blurRadius: 14.01,
                    offset: Offset(0, 0),
                  ),
                ],
                color: Color(0xff010e16),
              ),
              padding: const EdgeInsets.only(
                right: 15,
                top: 24,
                bottom: 24,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "View Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.39,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 188.19),
                  Text(
                    "\$ 7",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.39,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
