import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/GuruParampara/guruParampara.dart';
import 'package:maanikdarshan/Package/ManikNagar/maniknagar.dart';
import 'package:maanikdarshan/Package/Martands/GanMartand.dart';
import 'package:maanikdarshan/Package/Martands/GranthMartand.dart';
import 'package:maanikdarshan/Package/Martands/Sub/BodhaMartand.dart';
import 'package:maanikdarshan/Package/Martands/Sub/DnyanLahari.dart';
import 'package:maanikdarshan/Package/Martands/Sub/ManikyaWani.dart';
import 'package:maanikdarshan/Package/Martands/Sub/Manoharmayukh.dart';
import 'package:maanikdarshan/Package/Martands/Sub/SiddhaSudha.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand.dart';
import 'package:maanikdarshan/Package/homePage.dart';

import 'Package/Authentication/login.dart';
import 'Package/Martands/MantraMartand.dart';
import 'Package/mainPage.dart';

bool isLoggedIn = false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  if(FirebaseAuth.instance.currentUser != null){
    isLoggedIn = true;
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => isLoggedIn ? MainPage(): Login(),
        '/home': (context) => const HomePage(),
        '/ग्रंथ मार्तंड': (context) => GranthMartand(),
        '/गान मार्तंड': (context) => GanMartand(),
        '/मंत्र मार्तंड': (context) => MantraMartand(),
        '/उपासना मार्तंड': (context) => UpasanaMartand(),
        '/गुरू परंपरा': (context) => guruParampara(),
        '/माणिकनगर': (context) => maniknagar(),
        '/माणिक्यवाणी': (context) => ManikyaWani(),
        '/ज्ञानलहरी' : (context) => DnyanLahari(),
        '/मनोहरमयूख' : (context) => Manoharmayukh(),
        '/बोधमार्तण्ड' :  (context) => BodhaMartand(),
        '/सिद्धसुधा' :  (context) => SiddhaSudha(),
      },
    );
  }
}
