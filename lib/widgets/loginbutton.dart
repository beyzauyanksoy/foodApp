import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        width: 360,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
           border: Border.all(color: Color(0xff314B61)),
        ),
        child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 30),)),
      ),
    );
  }
}