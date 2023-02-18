import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  final String time;
  final String action;
  final String name;
  const ActionWidget({Key? key, required this.time, required this.name, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(time, style: const TextStyle(color: Colors.grey, fontSize: 16.0),),
          const SizedBox(height: 5,),
          Row(
            children: [
              Text(name, style: const TextStyle(color: Colors.black, fontSize: 18.0),),
              const SizedBox(width: 4),
               Text(action, style: const TextStyle(color: Colors.grey, fontSize: 16.0),)
            ],
          )
        ],
      ),
    );
  }
}
