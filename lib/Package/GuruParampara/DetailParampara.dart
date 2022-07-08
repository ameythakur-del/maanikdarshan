import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailParampara extends StatelessWidget {
  final String title, image, text;

  const DetailParampara(
      {Key? key, required this.title, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style:
              TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.w800),
        ),
        backgroundColor: const Color(0xFF7F1B0E),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(child:
      Column(children: [
        Padding(padding: EdgeInsets.all(10), child:
        Image.asset(image, width: 175)),
        Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10), child:
        Text(text, style: TextStyle(color: const Color(0xFF630F05), fontSize: 14, fontWeight: FontWeight.w400), textAlign: TextAlign.center,)),
        Image.asset('assets/images/leaf_1.png', width: 72,)
      ],),)
    );
  }
}
