import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  final String text;
  final String title;
  final double size;
  const Sample({Key? key, required this.text, required this.title, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                style: TextStyle(color: const Color(0xFF393939), fontSize: size),
                textAlign: TextAlign.center,
              ),
            ))
      ],
    );
  }
}
