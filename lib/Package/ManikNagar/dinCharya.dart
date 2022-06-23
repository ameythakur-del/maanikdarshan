

import 'package:flutter/material.dart';

class dinCharya extends StatelessWidget {
  const dinCharya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(padding: EdgeInsets.all(20),child:
        Column(
            children: [
              Center(
                  child: Text(
                    'दिनचर्या',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: const Color(0xFF630F05)),
                  )),
              Image.asset('assets/images/dinCharya.png'),
              Padding(padding: EdgeInsets.only(top: 10), child:
              Text('''सकाळी 06:00 -  काकडाआरती\nसकाळी 09:00 - पूजा व अभिषेक\nदुपारी 12:30 - माधुकरी भिक्षा आणि आरती\nदुपारी 01:00 - महाप्रसाद\nदुपारी 04:00 - आरती (गुरुवारी व शनिवारी )\nसंध्याकाळी 07:30 - भजन व प्रदोषपूजा\nरात्री 09:00 - शेजारती''',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              ))
            ])));
  }
}
