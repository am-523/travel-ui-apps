import 'package:flutter/material.dart';
import 'package:travel_ui_apps/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final String name;

  BottomNavbarItem({this.imageUrl, this.name, this.isActive});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          this.imageUrl,
          width: 23,
        ),
        Spacer(),
        Spacer(),
        isActive
            ? Container(
                width: 28,
                height: 2,
                decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(900))),
              )
            : Container(),
      ],
    );
  }
}
