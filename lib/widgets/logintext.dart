import 'package:flutter/cupertino.dart';
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
    return Text(
      "Lorem ipsum\n dolor sit amet,\n consectetur\n adipiscing elit."
    );
  }
}