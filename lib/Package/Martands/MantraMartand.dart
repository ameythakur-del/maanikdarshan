import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MantraMartand extends StatelessWidget {

  MantraMartand({Key? key}) : super(key: key);

  final List<String> names = ["आह्निकप्रकरणम्", "पूजा प्रकरणम्", "न्यास प्रकरणम्", "अभिषेक प्रकरणम्", "अर्चनाप्रकरणम् (नामावलिः)", "मन्त्रपुष्पाञ्जलिप्रकरणम्", "सामान्यप्रकरणम्", "उपनिषद् प्रकरणम्"];
  final List<String> images = ["assets/images/mantra_martands/0.png", "assets/images/mantra_martands/1.png", "assets/images/mantra_martands/2.png", "assets/images/mantra_martands/3.png", "assets/images/mantra_martands/4.png", "assets/images/mantra_martands/5.png", "assets/images/mantra_martands/6.png", "assets/images/mantra_martands/7.png"];

  final String titleBanner = "assets/images/mantra_title.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Image.asset("assets/images/home_heading.png"), backgroundColor: const Color(0xFF7F1B0E)),
      body: Column(children: [
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
        ))
      ],
      ),
    );
  }
}

Event(String image, String type, Color color, BuildContext context) {
  return Expanded(
      child: Material(
        child: InkWell(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => Martand(names: granthNames, images: granthImages, titleBanner: title)));
          },
          child: Container(margin: EdgeInsets.all(5), child:
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
      ));
}
