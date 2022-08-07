
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Events extends StatelessWidget {

  final String image, type;
  final Color color;
  final double textSize;

  const Events(
      {Key? key, required this.image, required this.type, required this.color, required this.textSize, required BuildContext context})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
          child: InkWell(
            onTap: () {
              if(type == "डोनेशन"){
                launch('https://manikprabhu.org/donation');
              }
              else if(type == 'ई सेवा'){
                launch('https://manikprabhu.org/product-category/eseva/');
              }
              else if(type == 'ई-स्टोर'){
                launch('https://manikprabhu.org/product-category/estore/');
              }
              else {
                Navigator.of(context).pushNamed("/" + type);
              }
            },
            child: Container(color: color, child:
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Container(
                    child: Image.asset(image),
                  ),
                ),
                (textSize == 14.0) ?
                Text(
                  type,
                  style: const TextStyle(
                      color: Color(0xFF69160B),
                      fontSize: 14.0,
                      fontFamily: 'Mukta',
                      fontWeight: FontWeight.w900),
                ) : Text(
                  type,
                  style: const TextStyle(
                      color: Color(0xFF69160B),
                      fontSize: 16.0,
                      fontFamily: 'Mukta',
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            ),
          ),
        ));
  }
}