import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Martands/Sub/MartandsModel.dart';

import '../sample.dart';

class MantraDocuments extends StatefulWidget {
  final val;
  final String title;
  const MantraDocuments({
    Key? key,
    required this.val,
    required this.title,
  }) : super(key: key);

  @override
  State<MantraDocuments> createState() => _MantraDocumentsState();
}

class _MantraDocumentsState extends State<MantraDocuments> {
  double value = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF7F1B0E),
          title: Text(
            widget.title,
            style: TextStyle(
                fontFamily: 'Mukta',
                fontWeight: FontWeight.w800,
                color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Slider(
              value: value,
              activeColor: const Color(0xFF772200),
              inactiveColor: const Color(0xFF808080),
              onChanged: (double s) {
                setState(() {
                  value = s;
                });
              },
              divisions: 10,
              min: 15.0,
              max: 30.0,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.val.length,
                itemBuilder: (context, index) {
                  if (widget.val[index]['type'] == 'title') {
                    return Center(
                        child: Text(
                      widget.val[index]['text'],
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Mukta',
                          color: const Color(0xFFA30808),
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ));
                  } else if (widget.val[index]['type'] == 'description') {
                    return Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            widget.val[index]['text'].replaceAll('\\n', '\n'),
                            style: TextStyle(
                                color: const Color(0xFF393939), fontSize: value, fontFamily: 'Mukta', fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ));
                  }
                  return Text('Audio');
                })
          ],
        )));
  }
}
