import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:maanikdarshan/Package/Martands/Sub/MartandsModel.dart';

class ManikyaWani extends StatelessWidget {
  const ManikyaWani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('ManikyaWani');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF7F1B0E),
        title: Text(
          "माणिक्यवाणी",
          style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(child: 
      Column(
        children: [
          // MartandsModel(text:'प्रभुविण कोण कुणाचा वाली॥ध्रु.॥\n\n कोण कुणाचा चाकर मालक।\n व्यर्थचि भाषण खाली॥1॥\n\n कर्ता हर्ता तो करवीता।\n मी मिथ्या जन बोली॥2॥\n\nमाणिक म्हणे मातेच्या उदरीं।\nनऊ मास रक्षण केली॥3॥।।\n',),
          // MartandsModel(text: 'मायेचा पसारा हा जग सारा॥ध्रु.॥\n\nजें जें दिसें तें तें नासे।\nनासे तें हि पुनरपि भासे॥1॥\n\nमाणिक म्हणे हें सूज्ञचि जाणे।\nजाणे म्हणे तो कांहींच नेणें॥2॥।।\n'),
          // MartandsModel(text: 'श्री गुरु माझा दत्त दयाघन रे॥ध्रु.॥\n\nअंतर चालक त्रिभुवन पालक।\nसकलांसी जीवन रे॥1॥\n\nअखंड अगोचर व्याप्त चराचर।\nशाश्वत चिद्घन रे॥2॥\n\nमाणिकदासासि मिळविले स्वरूपासी।\nदेउनि उन्मन रे॥3॥\n'),
          // MartandsModel(text: 'राम होउनि राम गारे।\nरामासी शरण रिघा रे॥ध्रु.॥\n\nकोण कैंचा हें विचारा।\nनका कर्म करूं व्यभिचारा॥1॥\n\nहा दुस्तर भव हराया।\nतुम्हि जोडा सखा गुरुराया॥2॥\n\nम्हणे माणिक निज राम पहावा।\nतयालागीं हृदयींच जपावा॥3॥\n\n'),
          // MartandsModel(text: 'दावा नयनीं यशोदेचा सुकुमार॥ध्रु.॥\n\nमस्तकीं मुगुट कांनी कुंडल शोभे।\nगळां वैजयंती हार॥1॥\n\nसांवळी तनु कटीं पीत वेष्टिला असे।\nरूप सुंदर अनिवार॥2॥\n\nयमुने तीरीं जो वाजवि वेणू।\nसंगे गोपाळ गोभार॥3॥\n\nमाणिक याचा प्रभु नाटकी गिरिधारी।\nकरी दुष्ट संहार॥4॥\n'),
          // MartandsModel(text: 'नंद मुकुंद मुरारि सांवळा।\nगोकुळांत हरी आला हो॥ध्रु.॥\n\nकारागृही अवतार घेतला।\nदेवकिच्या उदरा आला हो।\nकंस दुष्ट पापिष्ट जिवाला।\nकष्टी मनामध्यें झाला हो॥1॥\n\nघेउनि कडे वसुदेव निघाला।\nमध्यरात्रीं समयाला हो।\nयमुना जल कल्लोळ हरीच्या।\nस्पर्श करी चरणाला हो॥2॥\n\nघन:श्याम श्रीकृष्ण छबेला।\nरंगेला अलबेला हो।\nअलाबला किती घेती नाचती।\nकरती घरो-घरीं काला हो॥3॥\n\nवासुदेव गिरिधारी कन्हैय्या।\nमोहन मुरलीवाला हो।\nमाणिक म्हणे प्रभू शरण तया जा।\nध्याती मुनिजन ज्याला हो॥4॥\n'),
          // MartandsModel(text: 'पहा यशोदे तुझा लेक खोडी।\nजाऊनी दही दूध मडकी फोडी॥ध्रु.॥\n\nयेतसे नित्य गृहाप्रति माझ्या।\nलहानसें वासरूं वनाप्रति सोडी॥1॥\n\nजात असतां यमुनेच्या पाण्या।\nमागुनी येऊनी वस्त्रचि फेडी॥2॥\n\nमाणिक म्हणे वर्णितां याचे गुण।\nशेषहि शिणला माझी मति थोडी॥3॥\n\n'),
          // MartandsModel(text: 'धांव गे बाई धरिला कान्हा चोर॥ध्रु.॥\n\nमारावें तरी खोडी सोडीना।\nजैसा वराडी भोर॥1॥\n\nकिति सांगावें कांहीं ऐकेना।\nनिशिदिन याचा घोर ॥2॥\n\nमाणिक म्हणे प्रभु दीन दिसे परी।\nजो सर्वांहुनि थोर॥3॥\n'),
          // MartandsModel(text: 'कां रे मना हरिनाम न स्मरसी।\nलोभ लालूच ममतेमध्यें मरसी॥ध्रु.॥\n\nकरिशील वाचे कोणाची निंदा।\nहरिभजना मागें कां सरसी॥1॥\n\nरक्षिलें कोणीं गर्भवासी तुज।\nअरे मना मूढा तया विसरसी॥2॥\n\nमाणिक म्हणे मना सावध हाउनि।\nजाय गुरूसी शरण त्वरेंसी॥3॥\n'),
          // MartandsModel(text: 'नी दारू ननगे ना येनु निनगे।\nनानीनु अंबोदु प्रकृति स्वभावा॥ध्रु.॥\n\nप्रथमल्लि शिवनु अवनिंद जिवनु।\nशिवनु इल्लदली जीवनु अभावा॥1॥\n\nयल्लित्तु काया अल्ल्यादो छाया।\nकाया इल्लदल्लि छायानु अभावा॥2॥\n\nमाणिक ह्यसरल्लि नी नानु हुट्टल्लि।\nद्वैत मार्ग बिट्टु नोडु अनुभवा॥4॥\n\n'),
          FutureBuilder(
              future: users.doc('data').get(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.error != null) {
                    print("$snapshot.error.toString()");
                    return Container();
                  }
                  if (snapshot.hasData) {
                    return MartandsModel(text: 'text', title: 'title');
                  }
                }
                return Center(child:
                CircularProgressIndicator());
              }

          ),
        ],
      ),
    ));
  }
}
