import 'package:flutter/cupertino.dart';

class TitleTop extends StatelessWidget {
  const TitleTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Burger King",
      style: TextStyle(
        color: Color(0xff010e16),
        fontSize: 19.39,
        fontFamily: "Inter",
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
