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
    HomePage(),
    const Share(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[page],
      bottomNavigationBar: Padding(padding: EdgeInsets.all(20),child:
      ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)
          ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Fixed
          backgroundColor: const Color(0xFF7F1B0E),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Notifications",
              icon: Icon(Icons.notifications,
                  size: 30,
                  color: (page == 0)
                      ? const Color(0xFFF09B21)
                      : const Color(0xFFFFFFFF)),
            ),
            BottomNavigationBarItem(
              label: "Location",
              icon:
              Icon(Icons.my_location,
                  size: 30,
                  color: (page == 1)
                      ? const Color(0xFFF09B21)
                      : const Color(0xFFFFFFFF)),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home,
                  size: 30,
                  color: (page == 2)
                      ? const Color(0xFFF79023)
                      : const Color(0xFFFFFFFF)),
            ),
            BottomNavigationBarItem(
              label: "Share",
              icon: Icon(Icons.share,
                  size: 30,
                  color: (page == 3)
                      ? const Color(0xFFF09B21)
                      : const Color(0xFFFFFFFF)),

            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon:
              Icon(Icons.account_circle_outlined,
                  size: 30,
                  color: (page == 4)
                      ? const Color(0xFFF09B21)
                      : const Color(0xFFFFFFFF)),

            ),
          ],
          currentIndex: page,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    ));
  }
  void _onItemTapped(int index) {
    setState(() {
      page = index;
    });
  }
}
