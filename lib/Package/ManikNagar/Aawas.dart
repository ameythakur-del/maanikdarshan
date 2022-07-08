import 'package:flutter/material.dart';

class Aawas extends StatelessWidget {
  const Aawas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(child:
        Padding(padding: EdgeInsets.all(20), child:
        Column(children: [
      Center(
          child: Text(
        'आवास व्यवस्था',
        style: TextStyle(
            fontFamily: 'Mukta',
            fontWeight: FontWeight.w800,
            fontSize: 24,
            color: const Color(0xFF630F05)),
      )),
      SizedBox(height: 10,),
      Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            'श्रीसंस्थानांत भक्तलोकांच्या राहण्याची उत्तम व्यवस्था उपलब्ध आहे. श्रीसंस्थानांत मनोहर विलास\' व \'मार्तंड विलास\' अशी दोन अत्याधुनिक सुखसुविधांनी युक्त वातानुकूलित विश्रामगृहें असून माणिक विहार या नावाचे 50 खोल्यांचे भक्तनिवास आहे. श्रीसंस्थानच्या कायार्लयांशी संपर्क करून खोल्यांचे आरक्षण करता येते. श्रीसंस्थानच्या भंडारखान्यांत नित्य अन्नदान योजनेच्या अंतर्गत दुपारी व रात्री भोजनाची नि:शुल्क सोय उपलब्ध आहे.',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Mukta',
              fontWeight: FontWeight.w400,
              color: const Color(0xFF630F05),
            ),
            textAlign: TextAlign.center,
          )),
      Center(
          child: Text(
        'मनोहर विलास',
        style: TextStyle(
            fontFamily: 'Mukta',
            fontWeight: FontWeight.w800,
            fontSize: 24,
            color: const Color(0xFF630F05)),
      )),

      Padding(padding: EdgeInsets.only(bottom: 10), child:
      Image.asset('assets/images/aawas/1.png')),

          Padding(padding: EdgeInsets.only(bottom: 10), child:
          Image.asset('assets/images/aawas/2.png')),
      Text(
        '\‘मनोहर विलास\' या विश्रामगृहांत २ वातानुकूलित खोल्या असून प्रत्येक खोलीचे भाडे रु.2000/- आहे.',
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Mukta',
          fontWeight: FontWeight.w400,
          color: const Color(0xFF630F05),
        ),
        textAlign: TextAlign.center,
      ),
          SizedBox(height: 10,),
          Center(
              child: Text(
                'मार्तंड विलास',
                style: TextStyle(
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: const Color(0xFF630F05)),
              )),
            Padding(padding: EdgeInsets.only(bottom: 10), child:
          Image.asset('assets/images/aawas/3.png')),
            Padding(padding: EdgeInsets.only(bottom: 10), child:
          Image.asset('assets/images/aawas/4.png')),
          Text(
            '\‘मार्तंड विलास\' या विश्रामगृहांत ३ वातानुकूलित खोल्या असून प्रत्येक खोलीचे भाडे रु. 1200/- आहे. ',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Mukta',
              fontWeight: FontWeight.w400,
              color: const Color(0xFF630F05),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),
          Center(
              child: Text(
                'माणिक विहार',
                style: TextStyle(
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: const Color(0xFF630F05)),
              )),
            Padding(padding: EdgeInsets.only(bottom: 10), child:
          Image.asset('assets/images/aawas/5.png')),
            Padding(padding: EdgeInsets.only(bottom: 10), child:
          Image.asset('assets/images/aawas/6.png')),
          Text(
            '\‘माणिक विहार\' या भक्तनिवासांत 4 वातानुकूलित व 46 साध्या खोल्या असून वातानुकूलित खोलीचे भाडे रु. 1000/- व साध्या खोलीचे भाडे रु. 400/- आहे.',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Mukta',
              fontWeight: FontWeight.w400,
              color: const Color(0xFF630F05),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),
          Text(
            'आरक्षणासाठी संपर्क - श्री प्रकाश कुलकर्णी +919902453075\n श्री ईश्वर कुलकर्णी +919731089499',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Mukta',
              fontWeight: FontWeight.w400,
              color: const Color(0xFF630F05),
            ),
            textAlign: TextAlign.center,
          ),
    ]))));
  }
}
