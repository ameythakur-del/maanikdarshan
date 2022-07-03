import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Martands/MantraDocuments.dart';
import 'package:maanikdarshan/Package/Martands/Sub/MartandsModel.dart';

class ListCard extends StatelessWidget {
  final String text, image, parent;
  const ListCard({Key? key, required this.text, required this.image, required this.parent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Expanded(
            child: Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.0),
          color: const Color(0xFFF09B21)),
      child: GestureDetector(
        onTap: () async {
          CollectionReference collectionReference = FirebaseFirestore.instance.collection(parent);
          await collectionReference.doc(text).get().then((value) =>
              Navigator.push(context, MaterialPageRoute(builder: (context) => MantraDocuments(title: value.get('title'), text: value.get('text'))))
          );

        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 23,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'assets/images/Mukta',
                  color: Colors.white),
            )
          ],
        ),
      ),
    )));
  }
}
