import 'package:flutter/material.dart';

class FirstTile extends StatelessWidget {
   final bool isFirst;
  final Color color;
  final double width= 50;
  final double height =50;
  final Widget child;
  final Widget afterIndicator;
  const FirstTile({Key? key, this.isFirst = false, required this.color, required this.child, required this.afterIndicator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(25)
            ),
            child: child,
          ),
          const SizedBox(height: 2,),
          afterIndicator,

        ],
      ),
    );
  }
}
