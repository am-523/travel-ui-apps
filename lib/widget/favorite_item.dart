import 'package:flutter/material.dart';
import 'package:travel_ui_apps/theme.dart';

class FavoriteItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subTitle;
  final String rating;
  final String ticket;
  FavoriteItem(
      {this.imgUrl, this.title, this.subTitle, this.rating, this.ticket});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: 173,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('$imgUrl'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ClipRRect(
            child: Card(
              elevation: 0,
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$title',
                        style: boldTextStyle.copyWith(fontSize: 16),
                      ),
                      Text(
                        '$subTitle',
                        style: regularTextStyle.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Image.asset(
                        'assets/Star.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text('$rating'),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/Ticket1.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text('$ticket'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
