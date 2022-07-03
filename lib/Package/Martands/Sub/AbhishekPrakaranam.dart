import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Widgets/ListCard.dart';
import 'package:maanikdarshan/components/customAppBar.dart';
import 'package:maanikdarshan/components/customListTile.dart';
import 'package:maanikdarshan/components/displayText.dart';


class AbhishekPrakaranam extends StatelessWidget {
  const AbhishekPrakaranam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('अभिषेकप्रकरणम्');

    return Scaffold(
      appBar: ManikDarshan(title: "अभिषेक प्रकरणम्"),
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
                  return ListCard(text: data[index], image: 'assets/images/listIcon.png', parent : 'अभिषेकप्रकरणम्');
                });
          }
          return const Center(child: CircularProgressIndicator());
            },
      ),
    );
  }
}
