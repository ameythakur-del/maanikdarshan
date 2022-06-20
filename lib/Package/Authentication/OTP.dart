import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTP extends StatelessWidget {
  final String name, phone;
  const OTP({Key? key, required this.name, required this.phone}) : super(key: key);

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
          Padding(padding: EdgeInsets.all(20), child:
          OtpTextField(
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
            onSubmit: (String verificationCode){

            }, // end onSubmit
          ),),
          TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                primary: Colors.white,
                backgroundColor: const Color(0xFFEC971C), // foreground
                shape:
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75.0),
                    side: BorderSide.none
                )
            ),
            onPressed: (){

            }, child: Text('Send', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),),

          TextButton(onPressed: (){

          }, child: Text('Resend', style: TextStyle(decoration:TextDecoration.underline, color: const Color(0xFF484848)),))
        ],
      ),
    );
  }
}
