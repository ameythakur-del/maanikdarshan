import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset('assets/images/swami_background.png'),
        Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Text(
              'श्री भक्तकार्यकल्पद्रुम गुरुसार्वभौम श्रीमद्राजाधिराज योगिमहाराज त्रिभुवनानन्द अद्वैत अभेद निरञ्जन निर्गुण निरालम्ब परिपूर्ण सदोदित सकलमतस्थापित श्री सद्गुरु माणिकप्रभु महाराज की जय',
              textAlign: TextAlign.center,
              style: TextStyle(color: const Color(0xFF7F1B0E), fontSize: 19, fontFamily: 'Mukta', fontWeight: FontWeight.bold),
            )),
        Image.asset('assets/images/leaf_1.png', width: 75, height: 75),
        Padding(padding: EdgeInsets.only(left: 20, right: 20),
            child:
        Image.asset('assets/images/yatra_banner.png'))
      ],
    ));
  }
}
