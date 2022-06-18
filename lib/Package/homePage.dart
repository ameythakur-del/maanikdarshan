import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Martands/GranthMartand.dart';

import 'Widgets/Events.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(title: Image.asset("assets/images/home_heading.png"), backgroundColor: const Color(0xFF7F1B0E),),
        body:
        SingleChildScrollView(child:
        Column(
          children: [
            Image.asset('assets/images/swami_background.png'),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Text(
                  'श्री भक्तकार्यकल्पद्रुम गुरुसार्वभौम श्रीमद्राजाधिराज योगिमहाराज त्रिभुवनानन्द अद्वैत अभेद निरञ्जन निर्गुण निरालम्ब परिपूर्ण सदोदित सकलमतस्थापित श्री सद्गुरु माणिकप्रभु महाराज की जय',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: const Color(0xFF7F1B0E),
                      fontSize: 19,
                      fontFamily: 'Mukta',
                      fontWeight: FontWeight.bold),
                )),
            Image.asset('assets/images/leaf_1.png', width: 75, height: 75),
            Padding(padding: EdgeInsets.only(left: 20, right: 20),
                child:
                Image.asset('assets/images/yatra_banner.png')),
            Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child:
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Events(image: "assets/images/manikratna.png", type: "माणिकरत्न", color: Colors.white, textSize: 16.0, context: context),
                Events(image: "assets/images/donation.png", type: "डोनेशन",  color: Colors.white, textSize: 16.0,  context: context),
                Events(image: "assets/images/manikratna.png", type: "ई सेवा", color: Colors.white, textSize: 16.0, context: context)
              ],
            ),

            ),

            Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child:
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Events2("assets/images/shri_sansthan.png", "माणिकरत्न", context),
                  Events2("assets/images/maniknagar.png", "डोनेशन", context),
                  Events2("assets/images/guru_parampara.png", "ई सेवा", context)
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(240, 155, 33, 0.3),
                borderRadius: BorderRadius.circular(18)
              ),
                margin: EdgeInsets.only(bottom: 80, left: 20, right: 20),
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),

              child: Column(children: [
                Row( children: [
                    Events(image: "assets/images/upasana_martand.png", type: "उपासना मार्तंड", color: const Color.fromRGBO(240, 155, 33, 0.3), textSize: 14.0, context: context),
                    Events(image: "assets/images/gan_martand.png", type: "गान मार्तंड", color: const Color.fromRGBO(240, 155, 33, 0.3), textSize: 14.0,  context: context),
                    Events(image: "assets/images/granth_martand.png", type: "ग्रंथ मार्तंड", color:  const Color.fromRGBO(240, 155, 33, 0.3), textSize: 14.0, context: context),
                    Events(image: "assets/images/mantra_martand.png", type: "मंत्र मार्तंड",  color: const Color.fromRGBO(240, 155, 33, 0.3), textSize: 14.0, context: context), ]
                ),
              Row( children: [
                Events(image: "assets/images/upakram.png", type: "उपक्रम", color: const Color.fromRGBO(240, 155, 33, 0.3), textSize: 14.0, context: context),
                Events(image: "assets/images/dindarshika.png", type: "दिनदर्शिका", color: const Color.fromRGBO(240, 155, 33, 0.3), textSize: 14.0, context: context),
                Events(image: "assets/images/e_store.png", type: "ई स्टोर", color: const Color.fromRGBO(240, 155, 33, 0.3), textSize: 14.0, context: context),
                Events(image: "assets/images/download.png", type: "डाऊनलोड", color: const Color.fromRGBO(240, 155, 33, 0.3), textSize: 14.0, context: context),
              ],)],
            )
          ),]
        ),),
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
          child:
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                child: Container(
                  child: Image.asset(image),
                ),
              ),
        ),
      ),
    );
  }
}
