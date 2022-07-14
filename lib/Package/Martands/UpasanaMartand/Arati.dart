import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Widgets/ListCard.dart';
import 'package:maanikdarshan/components/customAppBar.dart';
import 'package:maanikdarshan/components/customListTile.dart';
import 'package:maanikdarshan/components/displayText.dart';


class Arati extends StatelessWidget {
  const Arati({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('आरती');
    List<String> images = ["assets/images/aarati/1.png", "assets/images/aarati/2.png", "assets/images/aarati/3.png", "assets/images/aarati/4.png", "assets/images/aarati/5.png", "assets/images/aarati/6.png", "assets/images/aarati/7.png", "assets/images/aarati/8.png", "assets/images/aarati/9.png", "assets/images/aarati/10.png",
      "assets/images/aarati/11.png", "assets/images/aarati/12.png", "assets/images/aarati/13.png", "assets/images/aarati/14.png", "assets/images/aarati/15.png", "assets/images/aarati/16.png", "assets/images/aarati/17.png", "assets/images/aarati/18.png", "assets/images/aarati/19.png", "assets/images/aarati/20.png",
      "assets/images/aarati/21.png", "assets/images/aarati/22.png", "assets/images/aarati/23.png", "assets/images/aarati/24.png", "assets/images/aarati/25.png", "assets/images/aarati/26.png", "assets/images/aarati/27.png", "assets/images/aarati/28.png", "assets/images/aarati/29.png", "assets/images/aarati/30.png",
      "assets/images/aarati/30.png", "assets/images/aarati/30.png", "assets/images/aarati/31.png", "assets/images/aarati/32.png", "assets/images/aarati/33.png", "assets/images/aarati/34.png", "assets/images/aarati/35.png", "assets/images/aarati/36.png",
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
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListCard(text: data[index], image: images[index], parent : 'आरती');
                });
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
