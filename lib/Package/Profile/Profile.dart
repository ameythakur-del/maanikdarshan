import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Authentication/login.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  FirebaseAuth auth = FirebaseAuth.instance;

  signOut() async {
    await auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF7F1B0E),
          title: Text(
            "प्रोफाइल",
            style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.bold),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            signOut();
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          child: Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/Vector.png',
                    width: 28,
                  ),
                  SizedBox(width: 15,),
                  Text(
                    'Logout',
                    style: TextStyle(fontSize: 24, fontFamily: 'Mukta', color: const Color(0xFF7F1B0E), fontWeight: FontWeight.bold),
                  )
                ],
              )),
        ));
  }
}
