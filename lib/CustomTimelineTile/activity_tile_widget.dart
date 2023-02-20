import 'package:flutter/material.dart';
import 'indicator_widget.dart';

class TimelineTile extends StatelessWidget {
  final Indicator afterIndicator;
  final Widget rightContent;
  final String imagePath;

  const TimelineTile({Key? key,  required this.afterIndicator, required this.rightContent, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 60,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                      imagePath,
                    )
                  )
                ),
              ),
              afterIndicator,
            ],
          ),
          //const SizedBox(width: 10,),
          rightContent,






        ],
      ),
    );
  }
}


