import 'package:flutter/material.dart';

import 'indicator_widget.dart';

class FirstTile extends StatelessWidget {
  final Color color;
  final Indicator afterIndicator;
  final Icon icon;
  const FirstTile({Key? key, required this.color, required this.afterIndicator, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(25)
            ),
            child: icon,
          ),
          const SizedBox(height: 2,),
          afterIndicator,

        ],
      ),
    );
  }
}
