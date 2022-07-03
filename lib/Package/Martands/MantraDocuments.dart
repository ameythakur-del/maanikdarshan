

import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Martands/Sub/MartandsModel.dart';

import '../sample.dart';

class MantraDocuments extends StatefulWidget {
  final String title, text;
  const MantraDocuments({Key? key, required this.title, required this.text}) : super(key: key);

  @override
  State<MantraDocuments> createState() => _MantraDocumentsState();
}

class _MantraDocumentsState extends State<MantraDocuments> {
  double value = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      backgroundColor: const Color(0xFF7F1B0E),
      title: Text(
        widget.title,
        style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.bold),
      ),
    ),
    body: Column(children: [
      Slider(
        value: value,
        activeColor: const Color(0xFF772200),
        inactiveColor: const Color(0xFFF79023),
        onChanged: (double s) {
          setState(() {
            value = s;
          });
        },
        divisions: 10,
        min: 15.0,
        max: 30.0,
      ),
    SingleChildScrollView(child:
      Sample(text: widget.text, title: widget.title, size: value,)),
    ],));
  }
}
