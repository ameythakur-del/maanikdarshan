import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/GuruParampara/guruParampara.dart';
import 'package:maanikdarshan/Package/ManikNagar/maniknagar.dart';
import 'package:maanikdarshan/Package/Martands/GanMartand.dart';
import 'package:maanikdarshan/Package/Martands/GranthMartand.dart';
import 'package:maanikdarshan/Package/Martands/Sub/AbhishekPrakaranam.dart';
import 'package:maanikdarshan/Package/Martands/Sub/Ahinkprakaranam.dart';
import 'package:maanikdarshan/Package/Martands/Sub/Anivarchya.dart';
import 'package:maanikdarshan/Package/Martands/Sub/ArchanaPrakaranam.dart';
import 'package:maanikdarshan/Package/Martands/Sub/AtmRupPratiti.dart';
import 'package:maanikdarshan/Package/Martands/Sub/BodhaMartand.dart';
import 'package:maanikdarshan/Package/Martands/Sub/DnyanLahari.dart';
import 'package:maanikdarshan/Package/Martands/Sub/Dnyanshikha.dart';
import 'package:maanikdarshan/Package/Martands/Sub/HanumantJanm.dart';
import 'package:maanikdarshan/Package/Martands/Sub/Mahamaunshatak.dart';
import 'package:maanikdarshan/Package/Martands/Sub/MalhariMahatmya.dart';
import 'package:maanikdarshan/Package/Martands/Sub/ManikNirvi.dart';
import 'package:maanikdarshan/Package/Martands/Sub/ManikyaWani.dart';
import 'package:maanikdarshan/Package/Martands/Sub/Manoharmayukh.dart';
import 'package:maanikdarshan/Package/Martands/Sub/Mantrapushpanjali.dart';
import 'package:maanikdarshan/Package/Martands/Sub/NyasPrakaranam.dart';
import 'package:maanikdarshan/Package/Martands/Sub/SangmeshMahatmya.dart';
import 'package:maanikdarshan/Package/Martands/Sub/SiddhaSudha.dart';
import 'package:maanikdarshan/Package/Martands/Sub/UpanishidPrakaranam.dart';
import 'package:maanikdarshan/Package/Martands/Sub/pujaPrakaranam.dart';
import 'package:maanikdarshan/Package/Martands/Sub/samanyaprakaranam.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand/Arati.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand/KSHETRAMAHATMYA.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand/MADHUMATISHYAMALA.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand/SADHANAPRADEEP.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand/SATVARACHEBHAJAN.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand/SHRIGURUSAMPRADAYA.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand/SHRIPRABHUCHARITRA.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand/STOTRANI.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand/UpadeshRatnamala.dart';
import 'package:maanikdarshan/Package/Martands/UpasanaMartand/VedantSHATPADI.dart';
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
      initialRoute: '/home',
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
        '/आत्मरूपप्रतीति' :  (context) => AtmRupPratiti(),
        '/मल्हारी माहात्म्य' :  (context) => MalhariMahatmya(),
        '/संगमेश माहात्म्य' :  (context) => SangmeshMahatmya(),
        '/हनुमंत जन्म' :  (context) => HanumantJanm(),
        '/अनिर्वाच्य' : (context) => Anivarchya(),
        '/ज्ञानशिखा' : (context) => Dnyanshikha(),
        '/माणिक निर्विकल्पबोध' : (context) => ManikNirvi(),
        '/महामौनशतक' : (context) => Mahamaunshatak(),
        '/आह्निकप्रकरणम्' : (context) => Ahinkprakaranam(),
        '/पूजा प्रकरणम्' : (context) => pujaPrakaranam(),
        '/न्यास प्रकरणम्': (context) => NyasPrakaranam(),
        '/अभिषेक प्रकरणम्' : (context) => AbhishekPrakaranam(),
        '/अर्चनाप्रकरणम् (नामावलिः)' : (context) => ArchanaPrakaranam(),
        '/मन्त्रपुष्पाञ्जलिप्रकरणम्' : (context) => Mantrapushpanjali(),
        '/सामान्यप्रकरणम्' : (context) => samanyaprakaranam(),
        '/उपनिषद् प्रकरणम्' : (context) => UpanishidPrakaranam(),
        '/उपदेश रत्नमाला' : (context) => UpadeshRatnamala(),
        '/श्रीगुरु संप्रदाय' : (context) => ShriGuruSampradaya(),
        '/आरती' : (context) => Arati(),
        '/सातवारांचे भजन' : (context) => SatvaracheBhajan(),
        '/स्तोत्राणि' : (context) => Strotani(),
        '/वेदांत षट्पदी' : (context) => VedantShatpadi(),
        '/मधुमती श्यामला सप्तपदी' : (context) => Madhumatishyanyamala(),
        '/श्रीप्रभुचरित्र' : (context) => SHRIPRABHUCHARITRA(),
        '/साधना प्रदीप' : (context) => SADHANAPRADEEP(),
        '/श्रीमाणिकनगरक्षेत्र माहात्म्य' : (context) => KSHETRAMAHATMYA(),
      },
    );
  }
}
