import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Authentication/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(Profile());
}

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
        body:  FutureBuilder(
            future: Future.value(auth.currentUser?.phoneNumber),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.error != null) {
                  print("$snapshot.error.toString()");
                  return Container();
                }
                if (snapshot.hasData) {
                  return Column(children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(padding: EdgeInsets.only(left: 20, top: 20), child:
                    Text('Registered Mobile Number',  style: TextStyle(fontSize: 20, fontFamily: 'Mukta', color: const Color(0xFF7F1B0E), fontWeight: FontWeight.bold),)), ),
                    Align(
              alignment: Alignment.topLeft,
                      child: Padding(padding: EdgeInsets.only(left: 20),
              child:
                    Text(snapshot.data, style: TextStyle(fontSize: 21, fontFamily: 'Mukta', color: const Color(0xFFB5B5B5)),)),
              ),
                    GestureDetector(
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
                    )],);
                }
                }
              return Center(child:
                CircularProgressIndicator());
              }

            ),

        );
  }
}
