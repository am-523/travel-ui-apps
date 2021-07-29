import 'package:flutter/material.dart';
import 'package:travel_ui_apps/page/favorite_place.dart';
import 'package:travel_ui_apps/theme.dart';
import 'package:travel_ui_apps/widget/category_item.dart';
import 'package:travel_ui_apps/widget/navbar_item.dart';
import 'package:travel_ui_apps/widget/recomende_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge, vertical: 22),
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/ic_menu.png',
                          width: 40,
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/Location.png',
                          width: 20,
                        ),
                        Text(
                          'Bukit Tinggi, Sumbar',
                          style: regularTextStyle,
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/ic_cari.png',
                          width: 40,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 192,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xff44C5E1),
                          Color(0xff4CA1AF),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(
                        11.0,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Let's Discover Around",
                          style: boldTextStyle.copyWith(
                              fontSize: 20, color: whiteColor),
                        ),
                        Text(
                          'Find the best place to visit',
                          style: regularTextStyle.copyWith(
                              fontSize: 14, color: whiteColor),
                        ),
                        Spacer(),
                        Container(
                          width: 132,
                          height: 41,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(
                              30.0,
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FavoriteScreen(),
                                  ),
                                  (route) => false);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Text(
                              'Start Now',
                              style: regularTextStyle.copyWith(
                                  fontSize: 14, color: Color(0xff46B3F6)),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Text(
                    'Category',
                    style: boldTextStyle.copyWith(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryItem(
                        imgUrl: 'assets/ic_all.png',
                        name: 'All',
                      ),
                      CategoryItem(
                        imgUrl: 'assets/ic_hotel.png',
                        name: 'Hotel',
                      ),
                      CategoryItem(
                        imgUrl: 'assets/ic_mall.png',
                        name: 'Mall',
                      ),
                      CategoryItem(
                        imgUrl: 'assets/ic_tiket.png',
                        name: 'Ticket',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Text(
                    'Recomended',
                    style: boldTextStyle.copyWith(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Container(
                    height: 167,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        RecomendedItem(
                          imgUrl: 'assets/image1.png',
                          name: 'Japannesse',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RecomendedItem(
                          imgUrl: 'assets/image2.png',
                          name: 'Indonesia',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RecomendedItem(
                          imgUrl: 'assets/image3.png',
                          name: 'Thailand',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RecomendedItem(
                          imgUrl: 'assets/image4.png',
                          name: 'Malaysia',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 51,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffE3F2FF), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/Heart1.png',
              isActive: false,
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
