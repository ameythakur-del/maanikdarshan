import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:maanikdarshan/Package/GuruParampara/guruParampara.dart';
import 'package:maanikdarshan/Package/ManikDarshan/Detail.dart';
import 'package:maanikdarshan/Package/ManikDarshan/manikratna.dart';
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
import 'package:maanikdarshan/Package/ShriSansthan.dart';
import 'package:maanikdarshan/Package/SplashScreen.dart';
import 'package:maanikdarshan/Package/Utsav/Utsav.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Package/Authentication/login.dart';
import 'Package/Location/location.dart';
import 'Package/ManikDarshan/Detail.dart';
import 'Package/Martands/MantraMartand.dart';
import 'Package/Notifications/notifications.dart';
import 'Package/Profile/Profile.dart';
import 'Package/Widgets/Events.dart';

bool isLoggedIn = false;

Future onClickNotification(String? payload) async {
  if (payload != null) {
    print("Payload ============== $payload");
    Get.to(() => Detail(url: payload));
  }
}

final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    "This channel is used for important notifications",
    importance: Importance.high,
    playSound: true);

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A bg message just showed up :  ${message.data}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  // ====== FCM ========
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  await _flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  var androidSettings = const AndroidInitializationSettings('ic_launcher');
  var iOSSettings = const IOSInitializationSettings(
    requestSoundPermission: false,
    requestBadgePermission: false,
    requestAlertPermission: false,
  );

  var initSettings =
      InitializationSettings(android: androidSettings, iOS: iOSSettings);

  await _flutterLocalNotificationsPlugin.initialize(initSettings,
      onSelectNotification: onClickNotification);

  // FirebaseMessaging.onBackgroundMessage((message) => _firebaseMessagingBackgroundHandler(message, _flutterLocalNotificationsPlugin));

  await _flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await messaging.setForegroundNotificationPresentationOptions(
      alert: true, badge: true, sound: true);

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  print('User granted permission: ${settings.authorizationStatus}');

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    // print('Message data: ${message.data}');
    //
    // if (message.notification != null) {
    //   print('Message also contained a notification: ${message.notification}');
    // }

    RemoteNotification? notification = message.notification;
    AndroidNotification? androidNotification = message.notification!.android;
    print(message.data);
    if (notification != null && androidNotification != null) {
      _flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channel.description,
            playSound: true,
            icon: "@mipmap/ic_launcher",
            largeIcon: const DrawableResourceAndroidBitmap("ic_launcher"),
          ),
        ),
        payload: message.data["url"],
      );
    }
  });



  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
    print('A new onMessageOpenedApp event was published!');
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    if (notification != null && android != null) {
      print("body " + notification.body.toString());
      await onClickNotification(message.data["url"]);
    }
  });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // subscribe to topic on each app start-up
  await messaging.subscribeToTopic('MANIK_APP_2');

  // ======= FCM ========

  if (FirebaseAuth.instance.currentUser != null) {
    isLoggedIn = true;
  }

  runApp(MyApp());
}

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message, FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin) async {
//   await Firebase.initializeApp();
//   print('A bg message just showed up :  ${message.data}');
//   const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     "MANIK_APP_ID",
//     "MANIK_APP_NOTIF_NAME",
//     importance: Importance.high,
//     playSound: true,
//     enableLights: true,
//   );
//
//   RemoteNotification? notification = message.notification;
//   AndroidNotification? androidNotification = message.notification!.android;
//   print(message.data);
//   if (notification != null && androidNotification != null) {
//     _flutterLocalNotificationsPlugin.show(
//       notification.hashCode,
//       notification.title,
//       notification.body,
//       NotificationDetails(
//         android: AndroidNotificationDetails(
//           channel.id,
//           channel.name,
//           channelDescription: channel.description,
//           playSound: true,
//           icon: "@mipmap/ic_launcher",
//           largeIcon: const DrawableResourceAndroidBitmap("ic_launcher"),
//         ),
//       ),
//     );
//   }
//   print("Handling a background message: ${message.messageId}");
//
// }

class MyApp extends StatelessWidget {
  //late final FirebaseMessaging _messaging;
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'माणिकदर्शन',
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
        '/': (context) => SplashScreen(),
        '/main': (context) => (isLoggedIn) ? HomePage() : Login(),
        '/home': (context) => const HomePage(),
        '/ग्रंथ मार्तंड': (context) => GranthMartand(),
        '/गान मार्तंड': (context) => GanMartand(),
        '/मंत्र मार्तंड': (context) => MantraMartand(),
        '/उपासना मार्तंड': (context) => UpasanaMartand(),
        '/गुरू परंपरा': (context) => guruParampara(),
        '/माणिकनगर': (context) => maniknagar(),
        '/माणिक्यवाणी': (context) => ManikyaWani(),
        '/ज्ञानलहरी': (context) => DnyanLahari(),
        '/मनोहरमयूख': (context) => Manoharmayukh(),
        '/बोधमार्तण्ड': (context) => BodhaMartand(),
        '/सिद्धसुधा': (context) => SiddhaSudha(),
        '/आत्मरूपप्रतीति': (context) => AtmRupPratiti(),
        '/मल्हारी माहात्म्य': (context) => MalhariMahatmya(),
        '/संगमेश माहात्म्य': (context) => SangmeshMahatmya(),
        '/हनुमंत जन्म': (context) => HanumantJanm(),
        '/अनिर्वाच्य': (context) => Anivarchya(),
        '/ज्ञानशिखा': (context) => Dnyanshikha(),
        '/माणिक निर्विकल्पबोध': (context) => ManikNirvi(),
        '/महामौनशतक': (context) => Mahamaunshatak(),
        '/आह्निकप्रकरणम्': (context) => Ahinkprakaranam(),
        '/पूजा प्रकरणम्': (context) => pujaPrakaranam(),
        '/न्यास प्रकरणम्': (context) => NyasPrakaranam(),
        '/अभिषेक प्रकरणम्': (context) => AbhishekPrakaranam(),
        '/अर्चनाप्रकरणम् (नामावलिः)': (context) => ArchanaPrakaranam(),
        '/मन्त्रपुष्पाञ्जलिप्रकरणम्': (context) => Mantrapushpanjali(),
        '/सामान्यप्रकरणम्': (context) => samanyaprakaranam(),
        '/उपनिषद् प्रकरणम्': (context) => UpanishidPrakaranam(),
        '/उपदेश रत्नमाला': (context) => UpadeshRatnamala(),
        '/श्रीगुरु संप्रदाय': (context) => ShriGuruSampradaya(),
        '/आरती': (context) => Arati(),
        '/सातवारांचे भजन': (context) => SatvaracheBhajan(),
        '/स्तोत्राणि': (context) => Strotani(),
        '/वेदांत षट्पदी': (context) => VedantShatpadi(),
        '/मधुमती श्यामला सप्तपदी': (context) => Madhumatishyanyamala(),
        '/श्रीप्रभुचरित्र': (context) => SHRIPRABHUCHARITRA(),
        '/साधना प्रदीप': (context) => SADHANAPRADEEP(),
        '/श्रीमाणिकनगर क्षेत्र माहात्म्य': (context) => KSHETRAMAHATMYA(),
        '/उत्सव': (context) => utsav(),
        '/श्री संस्थान': (context) => ShriSanthan(),
        '/अभिषेक प्रकरणम्': (context) => AbhishekPrakaranam(),
        '/अर्चनाप्रकरणम् (नामावलिः)': (context) => ArchanaPrakaranam(),
        '/मन्त्रपुष्पाञ्जलिप्रकरणम्': (context) => Mantrapushpanjali(),
        '/सामान्यप्रकरणम्': (context) => samanyaprakaranam(),
        '/उपनिषद् प्रकरणम्': (context) => UpanishidPrakaranam(),
        '/उपदेश रत्नमाला': (context) => UpadeshRatnamala(),
        '/श्रीगुरु संप्रदाय': (context) => ShriGuruSampradaya(),
        '/आरती': (context) => Arati(),
        '/सातवारांचे भजन': (context) => SatvaracheBhajan(),
        '/स्तोत्राणि': (context) => Strotani(),
        '/वेदांत षट्पदी': (context) => VedantShatpadi(),
        '/मधुमती श्यामला सप्तपदी': (context) => Madhumatishyanyamala(),
        '/श्रीप्रभुचरित्र': (context) => SHRIPRABHUCHARITRA(),
        '/साधना प्रदीप': (context) => SADHANAPRADEEP(),
        '/श्रीमाणिकनगरक्षेत्र माहात्म्य': (context) => KSHETRAMAHATMYA(),
        '/माणिकरत्न': (context) => manikratna(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final List<Widget> container;
  int activeIndex = 0;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('Social Media');
  late QuerySnapshot result;
  late List<dynamic?> data;
  bool doc = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("amey init");

    // if the application has been opened from a terminated state
    FirebaseMessaging.instance.getInitialMessage().then((message) async {
      if (message != null) {
        await onClickNotification(message.data["url"]);
      }
    });
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   RemoteNotification? notification = message.notification;
    //   AndroidNotification? android = message.notification?.android;
    //   if (notification != null && android != null) {
    //     print("body2 " + notification.body.toString());
    //     _flutterLocalNotificationsPlugin.show(
    //       notification.hashCode,
    //       notification.title,
    //       notification.body,
    //       NotificationDetails(
    //         android: AndroidNotificationDetails(
    //           channel.id,
    //           channel.name,
    //           color: Colors.blue,
    //           playSound: true,
    //           icon: '@mipmap/ic_launcher',
    //         ),
    //       ),
    //       payload: message.data["url"],
    //     );
    //   }
    // });
    //
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   print('A new onMessageOpenedApp event was published!');
    //   RemoteNotification? notification = message.notification;
    //   AndroidNotification? android = message.notification?.android;
    //   if (notification != null && android != null) {
    //     print("body " + notification.body.toString());
    //   }
    // });

    collectionReference.get().then((snapshot) {
      data = snapshot.docs;
      setState(() {
        doc = true;
      });
    });

    setState(() {
      firebaseAuth = FirebaseAuth.instance;
      container = [
        Image.asset(
          "assets/images/home_heading_1.png",
          width: double.infinity,
        ),
        Image.asset(
          "assets/images/home_heading_2.png",
          width: double.infinity,
        ),
        Image.asset(
          "assets/images/home_heading_3.png",
          width: double.infinity,
        ),
        Image.asset(
          "assets/images/home_heading_4.png",
          width: double.infinity,
        ),
      ];
    });
  }

  var myMenuItems = <String>[
    'User',
    'Contact',
    'Share',
  ];

  void onSelect(item) {
    switch (item) {
      case 'डाऊनलोड':
        launch('https://manikprabhu.org/e-books-downloads/');
        break;
      case 'संपर्क':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Location()));
        break;
      case 'शेअर':
        FlutterShare.share(
            title: 'Share the app using',
            text: 'Download this app',
            linkUrl: 'https://flutter.dev/',
            chooserTitle: 'Share the app');
        break;
      case 'Logout':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profile()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:
          const Color(0xFF7F1B0E), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton(
              onSelected: onSelect,
              itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: 'डाऊनलोड',
                      child: ListTile(
                        leading: ImageIcon(
                          AssetImage("assets/images/download.png"),
                          color: const Color(0xFF7F1B0E),
                        ),
                        title: Text(
                          'डाऊनलोड',
                          style: TextStyle(
                              color: const Color(0xFF7F1B0E),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Mukta'),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 'संपर्क',
                      child: ListTile(
                        leading: Icon(
                          Icons.location_pin,
                          color: const Color(0xFF7F1B0E),
                        ),
                        title: Text(
                          'संपर्क',
                          style: TextStyle(
                              color: const Color(0xFF7F1B0E),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Mukta'),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 'शेअर',
                      child: ListTile(
                        leading: Icon(
                          Icons.share,
                          color: const Color(0xFF7F1B0E),
                        ),
                        title: Text(
                          'शेअर',
                          style: TextStyle(
                              color: const Color(0xFF7F1B0E),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Mukta'),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                        value: 'Logout',
                        child: ListTile(
                          leading: ImageIcon(
                            AssetImage("assets/images/logout.png"),
                            color: const Color(0xFF7F1B0E),
                          ),
                          title: (firebaseAuth != null)
                              ? Text(
                                  'Logout',
                                  style: TextStyle(
                                      color: const Color(0xFF7F1B0E),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Mukta'),
                                )
                              : Text(
                                  'Login',
                                  style: TextStyle(
                                      color: const Color(0xFF7F1B0E),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Mukta'),
                                ),
                        )),
                  ]
              // {
              //   return myMenuItems.map((String choice) {
              //     return PopupMenuItem<String>(
              //       child:
              //       Text(choice),
              //       value: choice,
              //     );
              //   }).toList();
              // }
              )
        ],
        backgroundColor: const Color(0xFF7F1B0E),
        title: Text(
          "माणिकदर्शन",
          style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: CarouselSlider.builder(
                      itemCount: container.length,
                      options: CarouselOptions(
                        autoPlay: true,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                        viewportFraction: 0.97,
                        initialPage: 0,
                        enlargeCenterPage: true,
                      ),
                      itemBuilder: (BuildContext context, int Index, int page) {
                        return GestureDetector(onTap: (){
                          if(Index == 0){
                            Navigator.of(context).pushNamed("/माणिकनगर");
                          }
                          else{
                            launch("https://manikprabhu.org/product-category/eseva/");
                          }
                        },child:
                          container[Index]);
                      },
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.all(20), child: BuildIndicator()),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(18)),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Column(
                  children: [
                    Row(children: [
                      Events(
                          image: "assets/images/manikratna.png",
                          type: "माणिकरत्न",
                          color: const Color(0xFFFFFFFF),
                          textSize: 14.0,
                          context: context),
                      Events(
                          image: "assets/images/dindarshika.png",
                          type: "ई-स्टोर",
                          color: const Color(0xFFFFFFFF),
                          textSize: 14.0,
                          context: context),
                      Events(
                          image: "assets/images/eseva.png",
                          type: "ई सेवा",
                          color: const Color(0xFFFFFFFF),
                          textSize: 14.0,
                          context: context),
                      Events(
                          image: "assets/images/donation.png",
                          type: "डोनेशन",
                          color: const Color(0xFFFFFFFF),
                          textSize: 14.0,
                          context: context),
                    ]),
                    Row(
                      children: [
                        Events(
                            image: "assets/images/upasana_martand.png",
                            type: "उपासना मार्तंड",
                            color: const Color(0xFFFFFFFF),
                            textSize: 14.0,
                            context: context),
                        Events(
                            image: "assets/images/gan_martand.png",
                            type: "गान मार्तंड",
                            color: const Color(0xFFFFFFFF),
                            textSize: 14.0,
                            context: context),
                        Events(
                            image: "assets/images/granth_martand.png",
                            type: "ग्रंथ मार्तंड",
                            color: const Color(0xFFFFFFFF),
                            textSize: 14.0,
                            context: context),
                        Events(
                            image: "assets/images/mantra_martand.png",
                            type: "मंत्र मार्तंड",
                            color: const Color(0xFFFFFFFF),
                            textSize: 14.0,
                            context: context),
                      ],
                    ),
                    Row(
                      children: [
                        Events(
                            image: "assets/images/guru_parampara.png",
                            type: "गुरू परंपरा",
                            color: const Color(0xFFFFFFFF),
                            textSize: 14.0,
                            context: context),
                        Events(
                            image: "assets/images/shri_sansthan.png",
                            type: "श्री संस्थान",
                            color: const Color(0xFFFFFFFF),
                            textSize: 14.0,
                            context: context),
                        Events(
                            image: "assets/images/maniknagar.png",
                            type: "माणिकनगर",
                            color: const Color(0xFFFFFFFF),
                            textSize: 14.0,
                            context: context),

                        Events(
                            image: "assets/images/upakram.png",
                            type: "उत्सव",
                            color: const Color(0xFFFFFFFF),
                            textSize: 14.0,
                            context: context),

                        // Events(
                        //     image: "assets/images/e_store.png",
                        //     type: "ई स्टोर",
                        //     color: const Color.fromRGBO(240, 155, 33, 0.3),
                        //     textSize: 14.0,
                        //     context: context),
                        // Events(
                        //     image: "assets/images/download.png",
                        //     type: "डाऊनलोड",
                        //     color: const Color.fromRGBO(240, 155, 33, 0.3),
                        //     textSize: 14.0,
                        //     context: context),
                      ],
                    )
                  ],
                )),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20.0),
            //   child: Text(
            //     "सोशल मीडिया",
            //     style: TextStyle(
            //         fontWeight: FontWeight.w800,
            //         color: Color(0xFF69160B),
            //         fontFamily: 'Mukta',
            //         fontSize: 20.8),
            //     textAlign: TextAlign.left,
            //   ),
            // ),

            Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text('Latest Updates',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: const Color(0xFF69160B)))),
            (doc == true)
                ? ListView.builder(
                    physics: ScrollPhysics(),
                    itemCount: data?.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                        child: Column(
                          children: [
                            Text(
                              data![index]['Description'],
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: const Color(0xFF5E5E5E),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Image.network(data![index]['Image']),
                            SizedBox(
                              height: 10,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.only(
                                      left: 40, right: 40, top: 5, bottom: 5),
                                  primary: Colors.white,
                                  backgroundColor:
                                      const Color(0xFF7F1B0E), // foreground
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(75.0),
                                      side: BorderSide.none)),
                              onPressed: () async {
                                try {
                                  bool launched = await launch(
                                      data![index]['URL'],
                                      forceSafariVC: false);

                                  if (!launched) {
                                    await launch(data![index]['URL'],
                                        forceSafariVC: false);
                                  }
                                } catch (e) {
                                  await launch(data![index]['URL'],
                                      forceSafariVC: false);
                                }
                              },
                              child: Text(
                                'View',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      );
                    })
                : Container(),
          ],
        ),
      ),
    );
  }

  Widget Events2(String image, String type, BuildContext context) {
    return Expanded(
      child: Material(
        // color: AppTheme.more_bg,
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("/" + type);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 5.0),
            child: Container(
              child: Image.asset(image),
            ),
          ),
        ),
      ),
    );
  }

  Widget BuildIndicator() {
    return AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: container.length,
        effect: const SlideEffect(
          spacing: 8.0,
          radius: 8.0,
          dotWidth: 10.0,
          dotHeight: 10.0,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: Colors.white,
          activeDotColor: Colors.white,
        ));
  }
}
