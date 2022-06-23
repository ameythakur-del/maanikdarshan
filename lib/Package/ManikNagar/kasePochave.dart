

import 'package:flutter/material.dart';

class kasePochave extends StatelessWidget {
  const kasePochave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),child:
      Column(
        children: [
      Center(
          child: Text(
            'कसे पोचावे',
            style: TextStyle(
                fontFamily: 'Mukta',
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: const Color(0xFF630F05)),
          )),
          Image.asset('assets/images/kase_pochave.png'),
          Padding(padding: EdgeInsets.only(top: 10), child:
          Text(
            'माणिकनगर हें एका छोट्या डोंगराची उशी करून पहुडलेले शांत सुनिर्मळ असे गांव आहे. गावाच्या उत्तरेला डोंगर असून पूर्वेला गुरुगंगा व विरजा ह्या दोन चिमुकल्या नद्यांचे पवित्र संगम आहे. श्रीप्रभु महाराजांचे समाधि मंदिर हें ह्या गावचे केंद्रबिंदु होय. कर्नाटकांतील बीदर जिल्ह्यांत हुमनाबाद हें तालुक्याचे ठिकाण असून तेथून फक्त 1 किलोमीटर अंतरावर माणिकनगर वसले आहे. पुणे - हैदराबाद राष्ट्रीय महामार्ग व बीदर – बेंगळूर राज्य महामार्गाच्या ऐन चौकावर हुमनाबाद हें महत्त्वाचे बस स्थानक आहे. येथून गुलबर्गा 65 किलोमीटर, बीदर 50 किलोमीटर, पुणे 385 किलोमीटर, हैदराबाद 160 किलोमीटर व मुंबई 500 किलोमीटर अंतरावर आहेत. गुलबर्गा व बीदर हें जवळचे रेल्वे स्टेशन असून हैदराबाद हे जवळचे विमानतळ आहे.',
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
