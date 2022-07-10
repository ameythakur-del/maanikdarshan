import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../homePage.dart';

class OTP extends StatefulWidget {
  final String name, phone;

  const OTP({Key? key, required this.name, required this.phone})
      : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phoneSignIn(phoneNumber: widget.phone.toString());
  }

  String verificat = '';

  Future<void> phoneSignIn({required String phoneNumber}) async {
    Firebase.initializeApp().whenComplete(() async => {
          await FirebaseAuth.instance.verifyPhoneNumber(
            timeout: const Duration(seconds: 60),
            phoneNumber: "+91" + phoneNumber,
            verificationCompleted: (PhoneAuthCredential credential) async {
              print('arrived in completed');
              List<String> pin = [];

              for (int i = 0; i < credential.smsCode!.length; i++) {
                pin.add((credential.smsCode).toString()[i]);
              }

              setState(() {

              });

              if (FirebaseAuth.instance.currentUser == null) {
                signInAndNavigate(credential);
              }
            },
            verificationFailed: (FirebaseAuthException e) {
              Fluttertoast.showToast(
                  msg: e.message.toString(),
                  gravity: ToastGravity.BOTTOM,
                  toastLength: Toast.LENGTH_LONG);
            },
            codeSent: (String verificationI, int? resendToken) async {
              verificat = verificationI;
              Fluttertoast.showToast(
                  msg: 'Code sent successfully',
                  gravity: ToastGravity.BOTTOM,
                  toastLength: Toast.LENGTH_LONG);
            },
            codeAutoRetrievalTimeout: (String verificationId) {
              if (FirebaseAuth.instance.currentUser == null) {
                Fluttertoast.showToast(
                    msg: 'Time out. Try again',
                    gravity: ToastGravity.BOTTOM,
                    toastLength: Toast.LENGTH_LONG);
              }
            },
          )
        });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:
          const Color(0xFF7F1B0E), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'OTP Verification',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: const Color(0xFF630F05),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'We have sent an otp to your Registered Phone \nNumbers. Please enter the code below.',
                textAlign: TextAlign.center,
                style: TextStyle(color: const Color(0xFF484848)),
              )),
          Padding(
            padding: EdgeInsets.all(20),
            child: OtpTextField(
              numberOfFields: 6,
              borderColor: const Color(0xFF7F1B0E),
              focusedBorderColor: const Color(0xFF7F1B0E),
              disabledBorderColor: const Color(0xFF7F1B0E),
              enabledBorderColor: const Color(0xFF7F1B0E),
              autoFocus: false,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              borderWidth: 1,
              borderRadius: BorderRadius.circular(0),
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                if (FirebaseAuth.instance.currentUser == null) {
                  print('sha ' + '1');
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: verificat, smsCode: verificationCode);

                  signInAndNavigate(credential);
                }
                else {
                  print('sha ' + '2');
                }
              }, // end onSubmit
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                primary: Colors.white,
                backgroundColor: const Color(0xFFEC971C), // foreground
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75.0),
                    side: BorderSide.none)),
            onPressed: () {},
            child: Text(
              'Send',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
              onPressed: () {
                phoneSignIn(phoneNumber: widget.phone.toString());
              },
              child: Text(
                'Resend',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: const Color(0xFF484848)),
              ))
        ],
      ),
    );
  }

  signInAndNavigate(AuthCredential credential) async {
    try {
      await FirebaseAuth.instance
          .signInWithCredential(credential)
          .then((value) async => {
                Fluttertoast.showToast(
                    msg: "Mobile number verified successfully",
                    gravity: ToastGravity.BOTTOM,
                    toastLength: Toast.LENGTH_LONG),

              });
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    } catch (error) {
      Fluttertoast.showToast(
          msg: error.toString(),
          gravity: ToastGravity.BOTTOM,
          toastLength: Toast.LENGTH_LONG);
    }
  }
}
