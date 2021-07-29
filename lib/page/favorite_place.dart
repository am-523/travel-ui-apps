import 'package:flutter/material.dart';
import 'package:travel_ui_apps/page/home_screen.dart';
import 'package:travel_ui_apps/theme.dart';
import 'package:travel_ui_apps/widget/favorite_item.dart';
import 'package:travel_ui_apps/widget/navbar_item.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 50),
              child: ListView(
                children: [
                  FavoriteItem(
                    imgUrl: 'assets/image1.png',
                    title: 'Nusa Penida',
                    subTitle: 'Bali, Indonesia',
                    rating: '5.0',
                    ticket: '2 Orang',
                  ),
                  FavoriteItem(
                    imgUrl: 'assets/image2.png',
                    title: 'Nusa Kambangan',
                    subTitle: 'NTT, Indonesia',
                    rating: '4.0',
                    ticket: '1 Orang',
                  ),
                  FavoriteItem(
                    imgUrl: 'assets/image3.png',
                    title: 'Borobudur',
                    subTitle: 'Jogja, Indonesia',
                    rating: '5.0',
                    ticket: '2 Orang',
                  ),
                  FavoriteItem(
                    imgUrl: 'assets/image4.png',
                    title: 'Bukit Tinggi',
                    subTitle: 'Bukit Tinggi, Indonesia',
                    rating: '5.0',
                    ticket: '2 Orang',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Favorite Place',
                    style: boldTextStyle.copyWith(fontSize: 18),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                          (route) => false);
                    },
                    child: Image.asset(
                      'assets/Filter.png',
                      width: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 51,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/Home1.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/Heart.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/ticket.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/profile.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
