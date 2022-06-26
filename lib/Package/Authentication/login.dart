import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maanikdarshan/Package/Authentication/OTP.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final TextEditingController nameController = new TextEditingController(),
      mobileController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:
          const Color(0xFF7F1B0E), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        body: Form(
            key: _formKey,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset(
                    "assets/images/login_logo.png",
                    width: 173,
                  )),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      autofocus: false,
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: const Color(0xFF6D6D6D)),
                          fillColor: const Color(0xFFEFEFEF)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter mobile number';
                        }
                        return null;
                      },
                      controller: mobileController,
                      autofocus: false,
                      decoration: InputDecoration(
                          hintText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: const Color(0xFF6D6D6D)),
                          fillColor: const Color(0xFFEFEFEF)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.only(
                                left: 50, right: 50, top: 10, bottom: 10),
                            primary: Colors.white,
                            backgroundColor:
                                const Color(0xFFEC971C), // foreground
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(75.0),
                                side: BorderSide.none)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OTP(
                                        name: nameController.text,
                                        phone: mobileController.text)));
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Text('or',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: const Color(0xFF484848), fontSize: 12))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/' 'images/google_logo.png',
                            width: 54,
                          ))),
                  Text('Login with Google',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: const Color(0xFF484848), fontSize: 15))),
                ])));
  }
}
