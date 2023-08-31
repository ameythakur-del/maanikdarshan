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
              builder: (context) => MantraDocuments(val: data, title: text, i: 1,)));
        });
      },
      child:
      Container(
      margin: EdgeInsets.all(7.5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.0),
          color: const Color(0xFFE9E9E9)),
      child:
     Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(width: 50,),
            (image == 'assets/images/listIcon.png')?
            Image.asset(
              image,
              width: 15,
              height: 15,
            ):Image.asset(
              image,
              width: 29,
              height: 29,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Mukta',
                  color: const Color(0xFF9D2A1B)),
            )
          ],
        ),
      ),
    );
  }
}
