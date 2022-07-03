import 'package:flutter/material.dart';

class MartandsModel extends StatelessWidget {
  final String text;
  final String title;
  const MartandsModel({Key? key, required this.text, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
      Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 24,
              fontFamily: 'Mukta',
              color: const Color(0xFFA30808),
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
    Padding(
    padding: EdgeInsets.only(top: 10),
    child: Center(
    child: Text(
    text,
    style:
    TextStyle(color: const Color(0xFF393939), fontSize: 18),
    textAlign: TextAlign.center,
    ),
    ))],);
  }
}
