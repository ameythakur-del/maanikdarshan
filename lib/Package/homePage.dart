import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maanikdarshan/Package/Location/location.dart';
import 'package:maanikdarshan/Package/Notifications/notifications.dart';
import 'package:maanikdarshan/Package/Profile/Profile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Authentication/login.dart';
import 'Widgets/Events.dart';
import 'Widgets/ListCard.dart';

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
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
            child: Icon(Icons.notifications)),
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
                        return container[Index];
                      },
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(padding: EdgeInsets.all(20),
                        child:BuildIndicator()),
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
            (doc == true)?
           ListView.builder(
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
                                style: GoogleFonts.inter(textStyle:
                                TextStyle(
                                    color: const Color(0xFF5E5E5E),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400)),
                              ),
                              SizedBox(height: 5,),
                              Image.network(data![index]['Image']),
                              SizedBox(height: 10,),
                              TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.only(
                                        left: 40,
                                        right: 40,
                                        top: 5,
                                        bottom: 5),
                                    primary: Colors.white,
                                    backgroundColor:
                                        const Color(0xFF7F1B0E), // foreground
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(75.0),
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
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        );
                      }):Container(),

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
