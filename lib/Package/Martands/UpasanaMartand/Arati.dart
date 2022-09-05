import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Widgets/ListCard.dart';
import 'package:maanikdarshan/components/customAppBar.dart';
import 'package:maanikdarshan/components/customListTile.dart';
import 'package:maanikdarshan/components/displayText.dart';

import '../MantraDocuments.dart';


class Arati extends StatelessWidget {
  const Arati({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('आरती');
    List<String> images = ["assets/images/aarati/1.png", "assets/images/aarati/2.png", "assets/images/aarati/3.png", "assets/images/aarati/4.png", "assets/images/aarati/5.png", "assets/images/aarati/6.png", "assets/images/aarati/7.png", "assets/images/aarati/8.png", "assets/images/aarati/9.png", "assets/images/aarati/10.png",
      "assets/images/aarati/11.png", "assets/images/aarati/12.png", "assets/images/aarati/13.png", "assets/images/aarati/14.png", "assets/images/aarati/15.png", "assets/images/aarati/16.png", "assets/images/aarati/17.png", "assets/images/aarati/18.png", "assets/images/aarati/19.png", "assets/images/aarati/20.png",
      "assets/images/aarati/21.png", "assets/images/aarati/22.png", "assets/images/aarati/23.png", "assets/images/aarati/24.png", "assets/images/aarati/25.png", "assets/images/aarati/26.png", "assets/images/aarati/27.png", "assets/images/aarati/28.png", "assets/images/aarati/29.png", "assets/images/aarati/30.png",
      "assets/images/aarati/31.png", "assets/images/aarati/32.png", "assets/images/aarati/33.png", "assets/images/aarati/34.png", "assets/images/aarati/35.png", "assets/images/aarati/36.png",
    ];

    return Scaffold(
      appBar: ManikDarshan(title: "आरती"),
      body: FutureBuilder<DocumentSnapshot>(
        future: collectionReference.doc("data").get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text("Something went wrong"));
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return const Center(child: Text("Data does not exist"));
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> dataObj =
            snapshot.data!.data() as Map<String, dynamic>;

            var data = dataObj["data"];
            return SingleChildScrollView(child:
              Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20), child:
                      Row( children: [
                        Event(images[0], data[0], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[1], data[1], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[2], data[2], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[3], data[3], const Color.fromRGBO(240, 155, 33, 0.3), context), ]
                      )),
                      Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20), child:
                      Row( children: [
                        Event(images[4], data[4], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[5], data[5], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[6], data[6], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[7], data[7], const Color.fromRGBO(240, 155, 33, 0.3), context), ]
                      )),
                      Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20), child:
                      Row( children: [
                        Event(images[8], data[8], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[9], data[9], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[10], data[10], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[11], data[11], const Color.fromRGBO(240, 155, 33, 0.3), context), ]
                      )),
                      Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20), child:
                      Row( children: [
                        Event(images[12], data[12], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[13], data[13], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[14], data[14], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[15], data[15], const Color.fromRGBO(240, 155, 33, 0.3), context), ]
                      )),
                      Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20), child:
                      Row( children: [
                        Event(images[16], data[16], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[17], data[17], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[18], data[18], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[19], data[19], const Color.fromRGBO(240, 155, 33, 0.3), context), ]
                      )),
                      Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20), child:
                      Row( children: [
                        Event(images[20], data[20], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[21], data[21], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[22], data[22], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[23], data[23], const Color.fromRGBO(240, 155, 33, 0.3), context), ]
                      )),
                      Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20), child:
                      Row( children: [
                        Event(images[24], data[24], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[25], data[25], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[26], data[26], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[27], data[27], const Color.fromRGBO(240, 155, 33, 0.3), context), ]
                      )),
                      Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20), child:
                      Row( children: [
                        Event(images[28], data[28], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[29], data[29], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[30], data[30], const Color.fromRGBO(240, 155, 33, 0.3), context),
                        Event(images[31], data[31], const Color.fromRGBO(240, 155, 33, 0.3), context), ]
                      )),
                    ],
                  ));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

Event(String image, String type, Color color, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return Material(
    child: InkWell(
      onTap: () async {
        CollectionReference collectionReference = FirebaseFirestore.instance.collection('सातवारांचेभजन');
        await collectionReference.doc(type).get().then((value) {
          Map<String, dynamic> dataObj =
          value.data() as Map<String, dynamic>;
          var data = dataObj["data"];
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => MantraDocuments(val: data, title: type)));
        });
      },
      child: Container(margin: EdgeInsets.all(5), child:
      Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(image, width: width/5,),
          ),
          Container(
              padding: EdgeInsets.only(top: 5),
              height: 50,
              width: width/5,child:
          Text(
            type,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color(0xFF69160B),
                fontSize: 13.0,
                fontFamily: 'Mukta',
                fontWeight: FontWeight.w800),
          ))
        ],
      ),
      ),
    ),
  );
}
