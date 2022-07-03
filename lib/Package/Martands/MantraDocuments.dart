

import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Martands/Sub/MartandsModel.dart';

class MantraDocuments extends StatelessWidget {
  final String title, text;
  const MantraDocuments({Key? key, required this.title, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      backgroundColor: const Color(0xFF7F1B0E),
      title: Text(
        title,
        style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.bold),
      ),
    ),
    body: SingleChildScrollView(child:
    MartandsModel(text: text, title: title,)),
    );
  }
}
