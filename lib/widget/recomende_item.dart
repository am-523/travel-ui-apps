import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui_apps/page/details_screen.dart';
import 'package:travel_ui_apps/theme.dart';

class RecomendedItem extends StatefulWidget {
  final String imgUrl;
  final String name;
  RecomendedItem({this.imgUrl, this.name});

  @override
  _RecomendedItemState createState() => _RecomendedItemState();
}

class _RecomendedItemState extends State<RecomendedItem> {
  @override
  Widget build(BuildContext context) {
    bool isClicked = false;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen()),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 171,
          width: 247,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('${widget.imgUrl}'),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Frost(
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${widget.name}',
                        style: boldTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 110.0, left: 90.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  child: Image.asset(
                    isClicked ? 'assets/like.png' : 'assets/like1.png',
                    width: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
