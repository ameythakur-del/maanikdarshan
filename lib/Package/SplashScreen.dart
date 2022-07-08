import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mainPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed("/main");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
        body: Column(mainAxisSize: MainAxisSize.max,
          children: [
          Image.asset('assets/images/swami_background.png'),
          SizedBox(height: 20,),
          Text('।।  जय गुरू माणिक ।।', style: TextStyle(fontSize: 30, fontFamily: 'Mukta', fontWeight: FontWeight.w800, color: const Color(0xFF630F05)),),
          Expanded(child:
            Align(alignment: Alignment.bottomCenter,
            child: Container(
              color: const Color(0xFF7F1B0E),
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
          ))
        ],)
    );
  }
}
