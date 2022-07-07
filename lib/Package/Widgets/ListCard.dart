import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Martands/MantraDocuments.dart';

class ListCard extends StatelessWidget {
  final String text, image, parent;
  const ListCard({Key? key, required this.text, required this.image, required this.parent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () async {
        CollectionReference collectionReference = FirebaseFirestore.instance.collection(parent);
        await collectionReference.doc(text).get().then((value) {
          Map<String, dynamic> dataObj =
          value.data() as Map<String, dynamic>;
          var data = dataObj["data"];
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => MantraDocuments(val: data, title: text,)));
        });

      },
      child:
      Container(
      margin: EdgeInsets.all(7.5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.0),
          color: const Color(0xFFF09B21)),
      child:
     Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 29,
            ),
            SizedBox(
              width: 10,
            ),

            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'assets/images/Mukta',
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
