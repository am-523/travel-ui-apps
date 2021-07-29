import 'package:flutter/material.dart';
import 'package:travel_ui_apps/theme.dart';

class CategoryItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  CategoryItem({this.imgUrl, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 62,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff7EA2C3),
        ),
        borderRadius: BorderRadius.circular(
          30.0,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              '$imgUrl',
              width: 40,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '$name',
            style: regularTextStyle.copyWith(fontSize: 13),
          )
        ],
      ),
    );
  }
}
