import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Martands/Sub/MartandsModel.dart';

class Dnyanshikha extends StatefulWidget {
  const Dnyanshikha({Key? key}) : super(key: key);

  @override
  State<Dnyanshikha> createState() => _DnyanshikhaState();
}

class _DnyanshikhaState extends State<Dnyanshikha> {

  double value = 18;
  var data;
  bool isLoading = true;


  @override
  void initState() {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF7F1B0E),
          title: Text(
            "ज्ञानशिखा",
            style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.bold),
          ),
        ),
        body: isLoading? Center(child:
        CircularProgressIndicator(),):
        SingleChildScrollView(
            child: Column(children: [
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
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    String audio = "";
                    if(data[index]['audio'] != null){
                      audio = data[index]['audio'];
                    }
                    return MartandsModel(
                      title: data[index]["title"],
                      text: data[index]['text'].replaceAll("\\n", "\n"),
                      size: value,
                      audio: audio,
                    );
                  })])));
  }
  Future<void> getData() async {
    CollectionReference users =
    FirebaseFirestore.instance.collection('Dnyanshikha');

    DocumentSnapshot snapshot = await users.doc("data").get();

    Map<String, dynamic> dataObj =
    snapshot.data() as Map<String, dynamic>;

    data = dataObj["data"];

    if(isLoading == true) {
      setState(() {
        isLoading = false;
      });
    }
  }
}