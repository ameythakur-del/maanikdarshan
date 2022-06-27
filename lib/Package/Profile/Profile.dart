
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
      body: Center(
        child: Container(
            child: RaisedButton(
              onPressed: () {
                signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
              },
            )
        ),
      ),
    );
  }
}
