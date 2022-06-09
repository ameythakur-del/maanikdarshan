import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                Events("assets/images/manikratna.png", "माणिकरत्न", Colors.white, 16.0, context),
                Events("assets/images/donation.png", "डोनेशन", Colors.white, 16.0, context),
                Events("assets/images/manikratna.png", "ई सेवा", Colors.white, 16.0, context)
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
                    Events("assets/images/upasana_martand.png", "उपासना मार्तंड", const Color.fromRGBO(240, 155, 33, 0.3), 14.0, context),
                    Events("assets/images/gan_martand.png", "गान मार्तंड", const Color.fromRGBO(240, 155, 33, 0.3), 14.0, context),
                    Events("assets/images/granth_martand.png", "ग्रंथ मार्तंड", const Color.fromRGBO(240, 155, 33, 0.3), 14.0, context),
                    Events("assets/images/mantra_martand.png", "मंत्र मार्तंड", const Color.fromRGBO(240, 155, 33, 0.3), 14.0, context), ]
                ),
              Row( children: [
                Events("assets/images/upakram.png", "उपक्रम", const Color.fromRGBO(240, 155, 33, 0.3), 14.0, context),
                Events("assets/images/dindarshika.png", "दिनदर्शिका", const Color.fromRGBO(240, 155, 33, 0.3), 14.0, context),
                Events("assets/images/e_store.png", "ई स्टोर", const Color.fromRGBO(240, 155, 33, 0.3), 14.0, context),
                Events("assets/images/download.png", "डाऊनलोड", const Color.fromRGBO(240, 155, 33, 0.3), 14.0, context),
              ],)],
            )
          ),]
        ),),
        );
  }

  Widget Events(String image, String type, Color color, textSize, BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("/" + type);
          },
          child: Container(color: color,child:
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                child: Container(
                  child: Image.asset(image),
                ),
              ),
              (textSize == 14.0)?
              Text(
                type,
                style: const TextStyle(
                    color: Color(0xFF69160B),
                    fontSize: 14.0,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.w900),
              ):Text(
                type,
                style: const TextStyle(
                    color: Color(0xFF69160B),
                    fontSize: 16.0,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ),
    ));
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
