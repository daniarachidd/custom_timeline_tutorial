import 'package:custom_timeline_tutorial/CustomTimelineTile/action_widget.dart';
import 'package:flutter/material.dart';

class NewFollower extends StatelessWidget {
  final ActionWidget action;

  const NewFollower({Key? key, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          action,
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: const LinearGradient(
                                  tileMode: TileMode.clamp,
                                begin: Alignment.topLeft,
                                colors: <Color> [
                                  Colors.purple,
                                  Colors.pink,


                                ]
                              )
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                  const SizedBox(height: 15),
                  const Divider(
                    thickness: 1,
                    endIndent: 30,
                  )
                ],
              ),
                

      ),
    );
  }
}
