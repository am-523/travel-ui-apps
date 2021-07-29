import 'package:flutter/material.dart';
import 'package:travel_ui_apps/theme.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/bg2.png',
                width: MediaQuery.of(context).size.width,
                height: 250,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        color: whiteColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                            child: Image.asset(
                          'assets/up.png',
                          width: 30,
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Text(
                            'Waku Waku Japan',
                            style: boldTextStyle.copyWith(fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/Star.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '5.0',
                                style: regularTextStyle.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'assets/Ticket1.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '2 Orang',
                                style: regularTextStyle.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Text(
                            'Deskripsi',
                            style: regularTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Text(
                            'Jadikan pengalaman mu di jepang menjadi\nterbaik dan jalan jalan ke bunga sakura.',
                            style: regularTextStyle.copyWith(fontSize: 13),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Text(
                            'Photo',
                            style: regularTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            children: [
                              Container(
                                height: 115,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage('assets/image2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 115,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage('assets/image3.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 115,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage('assets/image4.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Text(
                            'Location',
                            style: regularTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: ListTile(
                              tileColor: Color(0xffADF0FF),
                              leading: Icon(
                                Icons.location_on,
                                color: Color(0xff4A5CF8),
                              ),
                              title: Text('Hokaido, Japan'),
                              trailing: Icon(Icons.arrow_right),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xffAB90F8),
                                  Color(0xff774FE2),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(
                                30.0,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffA68CEE),
                                  blurRadius: 11,
                                  offset: Offset(6, 7), // Shadow position
                                ),
                              ],
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Text(
                                'Book a trip',
                                style: whiteTextStyle.copyWith(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/arr_left.png',
                        width: 40,
                      ),
                    ),
                    Text(
                      'Details Trip',
                      style: whiteTextStyle.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
