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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:
      const Color(0xFFFFFFFF), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
        body: Center(child: Image.asset('assets/images/splash_logo.png')));
  }
}
