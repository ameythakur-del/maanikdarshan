import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF7F1B0E),
        title: Text(
          "संपर्क",
          style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [
        Container(
          child: Row(children: [

          ],),
        )
      ],),
    );
  }
}
