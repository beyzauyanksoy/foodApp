import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewLabel extends StatefulWidget {
  const NewLabel({super.key});

  @override
  State<NewLabel> createState() => _NewLabelState();
}

class _NewLabelState extends State<NewLabel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.29,
      height: 30.06,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
          color: Colors.black),
      child: const Center(
        child: Text(
          'New',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
