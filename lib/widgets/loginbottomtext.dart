import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginBottomText extends StatefulWidget {
  const LoginBottomText({super.key});

  @override
  State<LoginBottomText> createState() => _LoginBottomTextState();
}

class _LoginBottomTextState extends State<LoginBottomText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Text(
            "Don't have an account?",
            style: TextStyle(color: Color(0xff375268), fontSize: 16),
          ),
          Text(
            "Create account",
            style: TextStyle(
              color: Color(0xffD9D9D9),
            ),
          ),
        ],
      ),
    );
  }
}
