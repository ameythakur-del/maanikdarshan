import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Martand extends StatelessWidget {

  final List<String> names, images;
  final String titleBanner;

  const Martand({Key? key, required this.names, required this.images, required this.titleBanner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Image.asset("assets/images/home_heading.png"), backgroundColor: const Color(0xFF7F1B0E)),
      body: Column(children: [
        Padding(padding: EdgeInsets.all(20),child:
        Image.asset(titleBanner)),

        (images.length == 8)?

          Padding(padding: EdgeInsets.only(left: 20, right: 20, bottom: 5), child:
          Row( children: [
            Events(images[0], names[0], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Events(images[1], names[1], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Events(images[2], names[2], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Events(images[3], names[3], const Color.fromRGBO(240, 155, 33, 0.3), context), ]
          )):
        Padding(padding: EdgeInsets.only(left: 20, right: 20, bottom: 5), child:
        Row( children: [
          Events(images[0], names[0], const Color.fromRGBO(240, 155, 33, 0.3), context),
          Events(images[1], names[1], const Color.fromRGBO(240, 155, 33, 0.3), context),
          Events(images[2], names[2], const Color.fromRGBO(240, 155, 33, 0.3), context),]
        )) ,

        (images.length == 8)?
    Padding(padding: EdgeInsets.only(left: 20, right: 20), child:
          Row(
            children: [
            Events(images[4], names[4], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Events(images[5], names[5], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Events(images[6], names[6], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Events(images[7], names[7], const Color.fromRGBO(240, 155, 33, 0.3), context),
          ],
        )):

        Padding(padding: EdgeInsets.only(left: 20, right: 20), child:
        Row(
          children: [
            Events(images[3], names[3], const Color.fromRGBO(240, 155, 33, 0.3), context),
            Events(images[4], names[4], const Color.fromRGBO(240, 155, 33, 0.3), context),
          ],
        ))
      ],
      ),
    );
  }
}

Events(String image, String type, Color color, BuildContext context) {
  return Expanded(
      child: Material(
        child: InkWell(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => Martand(names: granthNames, images: granthImages, titleBanner: title)));
          },
          child:
          Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(image),
                ),
              Container(
                  padding: EdgeInsets.only(top: 5),
                  height: 50.0,child:
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
