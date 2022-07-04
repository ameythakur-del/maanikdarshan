import 'package:flutter/material.dart';
import 'package:maanikdarshan/components/customAppBar.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ManikDarshan(title: "संपर्क"),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset('assets/images/contact_rectangle.png'),
              Padding(padding: EdgeInsets.only(top: 10), child:
              Text(
                'श्री माणिकप्रभू संस्थान,',
                style: TextStyle(
                    fontFamily: 'Mukta',
                    fontSize: 24,
                    color: const Color(0xFF630F05),
                    fontWeight: FontWeight.w800),
              )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage("assets/images/Contact/Vector.png"),
                    color: const Color(0xFF630F05),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    'माणिकनगर, जिल्हा बिदर (कर्नाटक), पिन कोड - ५८५३५३',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontSize: 16,
                        color: const Color(0xFF630F05),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage("assets/images/Contact/Vector-2.png"),
                    color: const Color(0xFF630F05),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    'maniknagar@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontSize: 16,
                        color: const Color(0xFF630F05),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage("assets/images/Contact/Vector-1.png"),
                    color: const Color(0xFF630F05),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '+91-9448469913',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontSize: 16,
                        color: const Color(0xFF630F05),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage("assets/images/Contact/Vector-3.png"),
                    color: const Color(0xFF630F05),
                  ),
                  SizedBox(width: 5,),
                  ImageIcon(
                    AssetImage("assets/images/Contact/Vector.png"),
                    color: const Color(0xFF630F05),
                  ),
                  SizedBox(width: 5,),
                  ImageIcon(
                    AssetImage("assets/images/Contact/Vector-1.png"),
                    color: const Color(0xFF630F05),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
