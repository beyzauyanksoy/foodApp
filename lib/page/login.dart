import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant_food_app/widgets/loginImage.dart';
import 'package:restaurant_food_app/widgets/loginbottomtext.dart';
import 'package:restaurant_food_app/widgets/loginbutton.dart';
import 'package:restaurant_food_app/widgets/logintext.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          LoginImage(),
          LoginText(),
          LoginButton(),
          LoginBottomText(),
        ],
      ),
    );
  }
}