import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Widgets/ListCard.dart';
import 'package:maanikdarshan/components/customAppBar.dart';

import '../MantraDocuments.dart';


class SatvaracheBhajan extends StatelessWidget {
  const SatvaracheBhajan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('सातवारांचेभजन');
    List<String> images = ["assets/images/bhajan/1.png", "assets/images/bhajan/2.png", "assets/images/bhajan/3.png", "assets/images/bhajan/4.png", "assets/images/bhajan/5.png", "assets/images/bhajan/6.png", "assets/images/bhajan/7.png"];

    return Scaffold(
      appBar: ManikDarshan(title: "सातवारांचे भजन"),
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
            return
              // ListView.builder(
              //   itemCount: data.length,
              //   itemBuilder: (context, index) {
              //     return ListCard(text: data[index], image: images[index], parent : 'सातवारांचेभजन');
              //   });
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
                  Padding(padding: EdgeInsets.only(left: 20, right: 20), child:
                  Row(
                    children: [
                      Event(images[4], data[4], const Color.fromRGBO(240, 155, 33, 0.3), context),
                      Event(images[5], data[5], const Color.fromRGBO(240, 155, 33, 0.3), context),
                      Event(images[6], data[6], const Color.fromRGBO(240, 155, 33, 0.3), context),

                    ],
                  )),
                ],
              );
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

