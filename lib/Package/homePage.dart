import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Widgets/Events.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  late final List<Widget> container;
  int activeIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      container = [
        Image.asset(
          "assets/images/home_heading_1.png",
          width: double.infinity,
        ),
        Image.asset(
          "assets/images/home_heading_1.png",
          width: double.infinity,
        ),
      ];
    });
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
        title: Image.asset("assets/images/home_heading.png"),
        backgroundColor: const Color(0xFF7F1B0E),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 120,
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
            const SizedBox(
              height: 15,
            ),
            BuildIndicator(),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Events(
                      image: "assets/images/manikratna.png",
                      type: "माणिकरत्न",
                      color: Colors.white,
                      textSize: 16.0,
                      context: context),
                  Events(
                      image: "assets/images/donation.png",
                      type: "डोनेशन",
                      color: Colors.white,
                      textSize: 16.0,
                      context: context),
                  Events(
                      image: "assets/images/eseva.png",
                      type: "ई सेवा",
                      color: Colors.white,
                      textSize: 16.0,
                      context: context)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Events2("assets/images/shri_sansthan.png", "श्री संस्थान",
                      context),
                  Events2("assets/images/maniknagar.png", "माणिकनगर", context),
                  Events2("assets/images/guru_parampara.png", "गुरू परंपरा",
                      context)
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(240, 155, 33, 0.3),
                    borderRadius: BorderRadius.circular(18)),
                margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Column(
                  children: [
                    Row(children: [
                      Events(
                          image: "assets/images/upasana_martand.png",
                          type: "उपासना मार्तंड",
                          color: const Color.fromRGBO(240, 155, 33, 0.3),
                          textSize: 14.0,
                          context: context),
                      Events(
                          image: "assets/images/gan_martand.png",
                          type: "गान मार्तंड",
                          color: const Color.fromRGBO(240, 155, 33, 0.3),
                          textSize: 14.0,
                          context: context),
                      Events(
                          image: "assets/images/granth_martand.png",
                          type: "ग्रंथ मार्तंड",
                          color: const Color.fromRGBO(240, 155, 33, 0.3),
                          textSize: 14.0,
                          context: context),
                      Events(
                          image: "assets/images/mantra_martand.png",
                          type: "मंत्र मार्तंड",
                          color: const Color.fromRGBO(240, 155, 33, 0.3),
                          textSize: 14.0,
                          context: context),
                    ]),
                    Row(
                      children: [
                        Events(
                            image: "assets/images/upakram.png",
                            type: "उत्सव",
                            color: const Color.fromRGBO(240, 155, 33, 0.3),
                            textSize: 14.0,
                            context: context),
                        Events(
                            image: "assets/images/dindarshika.png",
                            type: "दिनदर्शिका",
                            color: const Color.fromRGBO(240, 155, 33, 0.3),
                            textSize: 14.0,
                            context: context),
                        Events(
                            image: "assets/images/e_store.png",
                            type: "ई स्टोर",
                            color: const Color.fromRGBO(240, 155, 33, 0.3),
                            textSize: 14.0,
                            context: context),
                        Events(
                            image: "assets/images/download.png",
                            type: "डाऊनलोड",
                            color: const Color.fromRGBO(240, 155, 33, 0.3),
                            textSize: 14.0,
                            context: context),
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
          dotWidth: 12.0,
          dotHeight: 12.0,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: Colors.grey,
          activeDotColor: Color.fromRGBO(142, 49, 12, 1)),
    );
  }
}
