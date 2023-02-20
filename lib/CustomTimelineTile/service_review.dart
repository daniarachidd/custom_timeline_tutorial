import 'package:flutter/material.dart';
import 'action_widget.dart';

class ServiceReview extends StatelessWidget {
  final ActionWidget action;
  const ServiceReview({Key? key,  required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              action,
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 0),
                padding: const EdgeInsets.only(top: 20, left: 12, right: 12, bottom: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                         Text('Good Service!', style: TextStyle( color: Colors.black87,fontSize: 16,fontWeight: FontWeight.bold)),
                         Text('52 MIN AGO', style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: const [
                         Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.yellow
                        ),
                         Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.yellow
                        ),
                         Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.yellow
                        ),
                         Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.yellow
                        ),
                         Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.grey
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1.5,
                      endIndent: 10,
                    ),
                    const SizedBox(height: 15,),
                    const Text('This is Awesome, totally cool. Keep going', style: TextStyle(color: Colors.black54)),
                    const SizedBox(height: 15,),
                    Row(
                      children: const [
                        Icon(Icons.favorite_outline, color: Colors.black54),
                        SizedBox(width: 10),
                        Text('271' ,style: TextStyle(color: Colors.black54)),
                        Expanded(child: SizedBox(),),
                        Icon(Icons.more_horiz, color: Colors.black54)
                      ],

                    ),


                  ],
                ),
              ),
              const SizedBox(height: 20),
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
