import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginText extends StatefulWidget {
  const LoginText({super.key});

  @override
  State<LoginText> createState() => _LoginTextState();
}

class _LoginTextState extends State<LoginText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Text(
          "Lorem ipsum\ndolor sit amet,\nconsectetur\nadipiscing elit.",
          style: TextStyle(color: Colors.white,fontSize: 35),
        ),
      ),
    );
  }
}