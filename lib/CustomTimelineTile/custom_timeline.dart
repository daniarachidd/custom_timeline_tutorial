import 'package:flutter/material.dart';
import 'package:custom_timeline_tutorial/CustomTimelineTile/action_widget.dart';
import 'package:custom_timeline_tutorial/CustomTimelineTile/first_tile.dart';
import 'package:custom_timeline_tutorial/CustomTimelineTile/service_review.dart';
import 'package:custom_timeline_tutorial/CustomTimelineTile/constants.dart';
import 'package:custom_timeline_tutorial/CustomTimelineTile/timeline_tile.dart';

import 'hotel_review.dart';
import 'indicator.dart';
import 'new_follower.dart';

class CustomTimelineTile extends StatelessWidget {
  const CustomTimelineTile({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            FirstTile(
              isFirst: true,
                color: Colors.white,
              afterIndicator: Indicator(
                lineStyle: LineStyle(color: Colors.grey, height: followerTileLength
                ),
              ),

                child: const Icon(Icons.access_time),

            ),
            TimelineTile(
                afterIndicator: Indicator(
                  lineStyle: LineStyle(
                    color: Colors.grey,
                    height: followerTileLength,
                  ),
                ),
                rightContent: const NewFollower(
                  action: ActionWidget(
                    name: 'Rick',
                    time: '50 MIN AGO',
                    action: follow,
                  ),
                ),
                imagePath: avatar1),

            TimelineTile(
                afterIndicator: Indicator(
                  lineStyle: LineStyle(
                    color: Colors.grey,
                    height: serviceTileLength,
                  ),
                ),
                rightContent: const ServiceReview(
                  action: ActionWidget(
                    name: 'Jonathan',
                    time: '1 HOUR AGO',
                    action: likedReview,
                  ),
                 ),
                imagePath: avatar2),
            TimelineTile(
              afterIndicator: Indicator(
                lineStyle: LineStyle(
                  height: followerTileLength,
                  color: Colors.grey,
                ),
              ),
              rightContent: const NewFollower(
                action: ActionWidget(
                  name: 'Ali',
                  time: '1 HOUR AGO',
                  action: follow,
                ),

              ), imagePath: avatar3,

            ),

            TimelineTile(
              afterIndicator: Indicator(
                lineStyle: LineStyle(
                  height: hotelTileLength,
                  color: Colors.grey,
                ),
              ),
              rightContent: HotelReviewWidget(
                action: const ActionWidget(
                  name: 'Sarah',
                  time: '2 HOURS AGO',
                  action: likedReview,
                ),
                name: 'Hotel Seawatch',
                price: '234',
                location: 'Chicago',
                likes: '50K',
                hotelImage: hotel,
              ),
              imagePath: avatar4,

            ),
            TimelineTile(
                afterIndicator: Indicator(
                  lineStyle: LineStyle(
                    height: 20,
                    color: Colors.grey
                  ),
                ),
                rightContent: const NewFollower(
                  action: ActionWidget(
                    name: 'Mohammad',
                    time: '2 HOURS AGO',
                    action: follow,
                  ),
                ),
                imagePath: avatar4)


          ],


      ),
    );
  }
}
