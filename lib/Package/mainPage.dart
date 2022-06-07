import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Location/location.dart';
import 'package:maanikdarshan/Package/Notifications/notifications.dart';
import 'package:maanikdarshan/Package/Profile/Profile.dart';
import 'package:maanikdarshan/Package/Share/Share.dart';

import 'homePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int page = 2;
  final screens = [
    const Notifications(),
    const Location(),
    const HomePage(),
    const Share(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[page],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0)),
        ),
        child: CurvedNavigationBar(
          index: page,
          color: const Color.fromRGBO(247, 144, 35, 1),
          buttonBackgroundColor: const Color.fromRGBO(101, 35, 8, 1),
          backgroundColor: Colors.transparent,
          height: 60,
          items: <Widget>[

              Icon(Icons.notifications,
                  size: 30,
                  color: (page == 0)
                      ? const Color(0xFFF09B21)
                      : const Color(0xFFFFFFFF)),


            Icon(Icons.my_location,
                size: 30,
                color: (page == 1)
                    ? const Color(0xFFF09B21)
                    : const Color(0xFFFFFFFF)),

            Icon(Icons.home,
                size: 30,
                color: (page == 2)
                    ? const Color(0xFFF79023)
                    : const Color(0xFFFFFFFF)),
            Icon(Icons.share,
                size: 30,
                color: (page == 3)
                    ? const Color(0xFFF09B21)
                    : const Color(0xFFFFFFFF)),

            Icon(Icons.account_circle_outlined,
                size: 30,
                color: (page == 1)
                    ? const Color(0xFFF09B21)
                    : const Color(0xFFFFFFFF)),
          ],
          onTap: (value) => setState(() {
            page = value;
          }),
        ),
      ),
    );
  }
}
