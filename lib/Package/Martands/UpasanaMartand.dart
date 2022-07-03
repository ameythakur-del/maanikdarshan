import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpasanaMartand extends StatelessWidget {

  UpasanaMartand({Key? key}) : super(key: key);

  final List<String> names = ["उपदेश रत्नमाला", "श्रीगुरु संप्रदाय", "आरती", "सातवारांचे भजन", "वेदांत षट्पदी", "मधुमती श्यामला सप्तपदी", "श्रीप्रभुचरित्र", "स्तोत्राणि", "साधना प्रदीप", "श्रीमाणिकनगरक्षेत्र माहात्म्य"];
  final List<String> images = ["assets/images/upasana_martands/5.png", "assets/images/upasana_martands/6.png", "assets/images/upasana_martands/0.png", "assets/images/upasana_martands/8.png", "assets/images/upasana_martands/4.png", "assets/images/upasana_martands/1.png", "assets/images/upasana_martands/7.png", "assets/images/upasana_martands/2.png", "assets/images/upasana_martands/9.png", "assets/images/upasana_martands/3.png"];

  final String titleBanner = "assets/images/upasana_title.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Image.asset("assets/images/home_heading.png"), backgroundColor: const Color(0xFF7F1B0E)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(padding: EdgeInsets.all(20),child:
        Image.asset(titleBanner)),

        Padding(padding: EdgeInsets.only(left: 20, right: 20), child:
        Row( children: [
          Event(images[0], names[0], const Color.fromRGBO(240, 155, 33, 0.3), context),
          Event(images[1], names[1], const Color.fromRGBO(240, 155, 33, 0.3), context),
          Event(images[2], names[2], const Color.fromRGBO(240, 155, 33, 0.3), context),
          Event(images[3], names[3], const Color.fromRGBO(240, 155, 33, 0.3), context), ]
        )),
        Padding(padding: EdgeInsets.only(left: 20, right: 20), child:
        Row(
          children: [
            Event(images[4], names[4], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Event(images[5], names[5], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Event(images[6], names[6], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Event(images[7], names[7], const Color.fromRGBO(240, 155, 33, 0.3), context),
          ],
        )),
        Padding(padding: EdgeInsets.only(left: 20, right: 20), child:
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Event(images[8], names[8], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Event(images[9], names[9], const Color.fromRGBO(240, 155, 33, 0.3), context),
          ],
        )),
      ],
      ),
    );
  }
}

Event(String image, String type, Color color, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return Material(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("/" + type);// Navigator.push(context, MaterialPageRoute(builder: (context) => Martand(names: granthNames, images: granthImages, titleBanner: title)));
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
                    fontWeight: FontWeight.w900),
              ))
            ],
          ),
          ),
        ),
      );
}
