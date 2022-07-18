import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:maanikdarshan/Package/ManikDarshan/Detail.dart';
import 'package:maanikdarshan/Package/ManikDarshan/data_manikratna.dart';
import 'package:flutter_share/flutter_share.dart';

class manikratna extends StatefulWidget {
  const manikratna({Key? key}) : super(key: key);

  @override
  State<manikratna> createState() => _manikratnaState();
}

class _manikratnaState extends State<manikratna> {


  Future<List<Data>> getData() async {
    var request = http.Request(
        'GET', Uri.parse('https://manikprabhu.co/wp-json/wp/v2/posts?per_page=100'));
    http.StreamedResponse response = await request.send();

    var data_response = await http.Response.fromStream(response);
    if (response.statusCode == 200) {
      print("sucess");
      List jsonResponse = json.decode(data_response.body);
      return jsonResponse.map((data) => new Data.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF7F1B0E),
        title: Text(
          "माणिकदर्शन",
          style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.w800, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            // Padding(padding: EdgeInsets.all(20), child:
            // Image.asset('assets/images/manikratna_title.png')),
            FutureBuilder<List<Data>>(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Data>? data = snapshot.data;
                    return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Color(0xFFE9E9E9),
                            child: GestureDetector(
                        onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(url: data![index].link.toString())));
                        },
                        child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: (index != 0)?
                                  EdgeInsets.all(15): EdgeInsets.fromLTRB(15, 35, 12, 35),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: new Image.network(
                                      data![index].apiFeatureImage.toString(),
                                      height: 60,
                                      width: 80,
                                      fit: BoxFit.fill,
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Padding(padding: EdgeInsets.only(top: 20, bottom: 20), child:
                                    Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      data[index].title!.rendered.toString(),
                                      overflow: TextOverflow.visible,
                                      textDirection: TextDirection.ltr,
                                      strutStyle:
                                          StrutStyle(fontSize: 20, height: 0.5),
                                      style: TextStyle(
                                          fontFamily: 'Mukta',
                                          fontSize: 24,
                                          height: 1,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF7F1B0E)),
                                    ),
                                    Text(data[index].api_author_name.toString(),
                                        style: TextStyle(
                                            fontFamily: 'Mukta',
                                            height: 1,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF757575)))
                                  ],
                                ))),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: IconButton(
                                        alignment: Alignment.centerRight,
                                        onPressed: () {
                                         FlutterShare.share(
                                              title: 'Visit this link',
                                              linkUrl: data[index].link,
                                          );
                                        },
                                        icon: Icon(
                                          Icons.share,
                                          color: Color(0xFF7F1B0E),
                                        )))
                              ],

                        )));
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  return Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center,
                      children: [ Center(child:
                    CircularProgressIndicator())]);
                }),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
