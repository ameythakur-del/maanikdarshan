import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maanikdarshan/components/customAppBar.dart';
import 'package:url_launcher/url_launcher.dart';
class Location extends StatelessWidget {
  Location({Key? key}) : super(key: key);

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(17.782662769060217, 77.11283932289271),
    zoom: 14.4746,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ManikDarshan(title: "संपर्क"),
      body: Padding(padding: EdgeInsets.only(left: 20, top: 20),child:
      Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                    height: 300,
                    child: GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: _kGooglePlex,
                      markers: {
                        const Marker(
                            markerId: MarkerId("math_location"),
                            position: LatLng(17.782662769060217, 77.11283932289271))
                      },
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                    )),
              ),
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
              SizedBox(height: 10,),
              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/images/Contact/Vector.png"),
                    color: const Color(0xFF630F05),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'माणिकनगर, जिल्हा बिदर (कर्नाटक), पिन कोड - ५८५३५३',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontSize: 16,
                        color: const Color(0xFF630F05),
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(height: 15,),

              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/images/Contact/Vector-2.png"),
                    color: const Color(0xFF630F05),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'maniknagar@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontSize: 16,
                        color: const Color(0xFF630F05),
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/images/Contact/Vector-1.png"),
                    color: const Color(0xFF630F05),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    '+91-9448469913',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontSize: 16,
                        color: const Color(0xFF630F05),
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  GestureDetector(onTap: (){
                    launch('instagram://user?username=shrimanikprabhu_maharaj');
                  }, child:
                  ImageIcon(
                    AssetImage("assets/images/Contact/Vector-3.png"),
                    color: const Color(0xFF630F05),
                  )),
                  SizedBox(width: 10,),
                  GestureDetector(onTap: () async {
                    launch('https://www.facebook.com/manikprabhumaharaj');
                  }, child:
                  ImageIcon(
                    AssetImage("assets/images/facebook.png"),
                    color: const Color(0xFF630F05),
                  )),
                  SizedBox(width: 10,),
                  GestureDetector(onTap: (){
                    launch('https://www.youtube.com/user/manikprabhusamsthan');
                  },child:
                  ImageIcon(
                    AssetImage("assets/images/YouTube.png"),
                    color: const Color(0xFF630F05),
                  )),
                ],
              ),
            ],
          ),
    ));
  }
}
