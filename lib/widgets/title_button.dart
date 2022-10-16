import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleButton extends StatelessWidget {
  const TitleButton({
    Key? key,
    required int secilenindex,
    required this.index,
    required this.titleName,
  })  : _secilenindex = secilenindex,
        super(key: key);

  final int _secilenindex;
  final int index;
  final String titleName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: _secilenindex == index ? Colors.black : Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(2.91)),
      width: 81.44,
      child: Center(
          child: Text(
        titleName,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: _secilenindex == index ? Colors.white : Colors.black,
          fontSize: 13.57,
        ),
      )),
    );
  }
}
