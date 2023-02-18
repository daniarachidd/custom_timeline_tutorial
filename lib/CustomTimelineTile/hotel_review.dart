import 'package:flutter/material.dart';
import 'package:custom_timeline_tutorial/CustomTimelineTile/action_widget.dart';
import 'package:custom_timeline_tutorial/CustomTimelineTile/constants.dart';

class HotelReviewWidget extends StatelessWidget {
  String hotelImage;
  String name, price, location, likes;
  Widget action;



   HotelReviewWidget({Key? key, required this.action, required this.hotelImage, required this.name, required this.price, required this.location, required this.likes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),

        ),
        child: Column(
          children: [
            action,
            const SizedBox(height: 20,),
            Container(
              width: 500,
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                          image: AssetImage(
                            hotelImage,
                          )

                      )
                    ),

                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name, style: const TextStyle( color: Colors.black87,fontSize: 16,fontWeight: FontWeight.bold),),
                                const SizedBox(height: 5),
                                Text('\$$price', style:  const TextStyle(color: Colors.black87),),
                              ],
                            ),
                            const Icon(Icons.more_vert, color: Colors.black54,)

                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  [
                            const Icon(Icons.location_pin, size: 20, color: Colors.black54),
                            Text(location, style: const TextStyle(color: Colors.black54)),
                            const Expanded(child: SizedBox()),
                            const Icon(Icons.favorite_outline, color: Colors.black54),
                            const SizedBox(width: 5),
                            Text(likes, style: const TextStyle(color: Colors.black54),),
                          ],
                        )
                      ],
                    ),
                  )

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



    );
  }
}
