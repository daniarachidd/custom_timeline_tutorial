import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {

  final LineStyle lineStyle;
  const Indicator({Key? key, required this.lineStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3, bottom: 3),
      width: 1.5,
      height: lineStyle.height,
      color: lineStyle.color,
    );
  }
}

class LineStyle {
  final Color color;
  final double height;

  LineStyle({required this.color,required this.height});
}
