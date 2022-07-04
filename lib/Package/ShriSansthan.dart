import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShriSanthan extends StatelessWidget {
  ShriSanthan({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Image.asset("assets/images/home_heading.png"),
            backgroundColor: const Color(0xFF7F1B0E)),
        body: SingleChildScrollView(child:
        Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m1.png')),
            Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                      'श्री माणिकप्रभु संस्थान',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color(0xFF630F05)),
                    ))),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'ई. स. 1845 साली श्री सद्गुरु माणिकप्रभु महाराज पर्यटन करीत हुमनाबाद नजीक गुरुगंगा व विरजा या दोन छोट्या नद्यांच्या संगमावर आले; ही जागा प्रभूंना अतिशय आवडली म्हणून याच ठिकाणीं कायमचे वास्तव्य करण्याचें श्रीप्रभूंनी ठरविले. इथेच एका गवताच्या झोपडीमधें श्रीदत्तप्रभूंची गादीची स्थापना प्रभूंनी केली व गादी शेजारी बांधलेल्या पर्णकुटीत प्रभु राहू लागले. प्रभूंच्या वास्तव्यामुळे या जागेस' 'माणिकनगर' 'हें नांव प्राप्त झाले. दत्ताच्या गादीसमोर एक मांडव उभारला गेला आणि या मांडवांत प्रभूंचा दरबार भरू लागला. वेदांताच्या अद्वैत सिद्धांतानुसार जगांतील सर्व मत, पंथ, धर्म व संप्रदाय एकाच परब्रह्माच्या प्राप्तीचे विविध मार्ग आहेत; ही शिकवण प्रभु महाराजांनी आपल्या उपदेशातून व आचरणांतून दिली आणि एकात्मभावनेची ही शिकवण दृढ करण्यासाठी प्रभुमहाराजांनी सर्वसमावेशक अशी उपासना पद्धतीही नेमून दिली, ज्याला ''सकलमत संप्रदाय' 'असें म्हणतात. प्रभूंच्या या ''सकलमत संप्रदायाचें' 'केंद्रस्थान असलेल्या प्रभूंच्या दरबारांस एका आध्यात्मिक संस्थेचे स्वरूप प्राप्त होऊन ही संस्था - ''श्री माणिकप्रभु संस्थान'' या नावांनी ओळखली जाऊ लागली.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 150, right: 150),
                child:Image.asset('assets/images/m.png')),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 70, right: 70),
                child:Image.asset('assets/images/m2.png')),

            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'श्री प्रभूंनी रोवलेले संस्थानरूपी बीजाचे रूपांतरण आज एका विशाल वटवृक्षाच्या रूपांत झाले असून प्रभूंनी ज्या तत्त्वावर संप्रदायाची उभारणी केली ते तत्त्व म्हणजे - एकं सद्विप्रा बहुधा वदन्ति (सद्वस्तु एकच असून विद्वान् त्याचे वर्णन अनेक प्रकारांनी करतात) हें श्रीसंस्थानचे बोधवाक्य म्हणून स्वीकारले गेले आहे. प्रभुमंदिराच्या शिखराच्या मधोमध गुरुतत्त्वाचे प्रतीक असलेल्या पादुकांचे चित्र हें श्री संस्थानचे प्रतीकचिह्न म्हणून आज अखिल विश्वांत ओळखले जाते. श्रीप्रभूंच्या महासमाधीनंतर त्यांच्या सर्व उत्तराधिकाऱ्यांनी उत्तरोत्तर या संस्थानच्या गौरवांत भर घातली त्यामुळे आज ही संस्था भारताची मूर्धन्य आध्यात्मिक संस्था म्हणून गणली जाते. संस्थानचे विद्यमान पीठाधिपति श्री ज्ञानराज माणिकप्रभु महाराजांच्या कुशल नेतृत्वांत ही संस्था यशाचे नवनवे शिखर गाठीत सतत प्रगतिपथावर अग्रेसर आहे.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 150, right: 150),
                child:Image.asset('assets/images/m.png')),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m3.png')),


            Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                      'अन्नदान',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color(0xFF630F05)),
                    ))),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'माणिकनगर येथे आद्य श्रीप्रभूंच्या काळापासून अविछिन्न अशी अन्नदानाची परंपरा अत्यंत निष्ठेने जपली जाते. ''नित्यान्नदान सेवा'' या योजनेखाली इथे येणाऱ्या हजारो भाविकांच्या दोन्हीं वेळच्या भोजनाची नि:शुल्क सोय श्रीसंस्थानामार्फत केली जाते. निरंतर 200 वर्षांपासून चालत आलेली ही परंपरा आजही उत्तम प्रकारे चालविली जाते. श्रीदत्तजयंती सारख्या मोठ्या उत्सव-महोत्सव प्रसंगी तर एक-एक लाख लोक या महाप्रसादाचा लाभ घेतात. भोजनासाठी विस्तृत अशे मोठ-मोठे हॉल असून आधुनिक सुखसोयींनीयुक्त अशी पाकशाळा नित्य हजारों भाविकांच्या भोजनाची सिद्धता करीत असते. या परिसरास भंडारखाना असें म्हणतात.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m4.png')),

            Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                      'श्री माणिकप्रभु वेद व संस्कृत पाठशाळा',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color(0xFF630F05)),
                    ))),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  '‘वेदोऽखिलो धर्ममूलम्’ वेद हा धर्माचा पाया असल्यामुळे लुप्त होत असलेल्या वेदाध्ययनाच्या प्राचीन परंपरेस जपून ठेवणें, हें आपले आद्य कर्तव्य आहे; हें जाणून श्रीसंस्थान मार्फत श्री माणिकप्रभु वेद व संस्कृत पाठशाळेची स्थापना श्री सिद्धराज मारिकप्रभु महाराजांनी केली. या विद्यालयांत वेदाचे व संस्कृत भाषेचे नि:शुल्क शिक्षण दिले जाते. प्राचीन गुरुकुल पद्धतीस अनुसरून 80 विद्यार्थी व 10 गुरुजन या आवासीय विद्यालयांत सतत अध्ययन-अध्यापनांत गुंतून वेद संरक्षणाचे गुरुतर कार्य करीत आहेत. या विद्यालयासाठी श्रीसंस्थाननी भव्य अशी वास्तू बांधून प्राचीन गुरुकुल पद्धतीचे सुंदर परिसर बांधले आहे. या विद्यालयांस भारत सरकारच्या राष्ट्रीय वेद विद्या संस्थानची मान्यता असून दक्षिण भारतातील अग्रगण्य अशा संस्थेत ही संस्था गणली जाते.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 150, right: 150),
                child:Image.asset('assets/images/m.png')),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m5.png')),

            Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                      'श्री माणिकप्रभु दिव्यांग पाठशाळा',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color(0xFF630F05)),
                    ))),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'नियतीच्या कठोर खेळामुळें समाजात अनेक दिव्यांग बालक असून त्यांच्या शिक्षणाची जबाबदारी श्रीसंस्थाननी घेतली आहे, कारण प्रभु हें सर्वांचे रक्षक आहेत आणि विशेषेकरून दिव्यांग बालकांच्या बाबतीत तर त्यांची कृपा ओसंडून वाहात असते. म्हणून श्री सिद्धराज माणिकप्रभु महाराजांनी श्री माणिकप्रभु दिव्यांग पाठशाळेची स्थापना केली. या पाठशाळेत अंध, मूक व बधिर बालकांच्या राहण्याची, भोजनाची व शिक्षणाची सर्व व्यस्था केली जाते. आज मितीस जवळ जवळ 100 दिव्यांग बालक प्रभूंच्या कृपाछत्राचा लाभ घेत आहेत.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 150, right: 150),
                child:Image.asset('assets/images/m.png')),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m6.png')),

            Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                      'माणिक पब्लिक स्कूल',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color(0xFF630F05)),
                    ))),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'श्री सिद्धराज माणिक प्रभु महाराजांचे शालेय शिक्षण ग्वाल्हेरच्या सुप्रसिद्ध सिंधिया स्कूल मध्यें झाल्यामुळे त्यांना राहून राहून असें वाटायचे कि ज्या प्रकारचे उच्चकोटीचे शिक्षण आपल्याला मिळाले, तसलेंच शिक्षण माणिकनगर व सभोवतालच्या ग्रामीण मुलांनाही मिळावे. त्या साठी श्रीमहाराजांनी अतोनात परिश्रम करून माणिकनगर येथे 1972 साली इंग्रजी माध्यमाचे आवासीय विद्यालय ‘माणिक पब्लिक स्कूल' 'या नावानी स्थापित केले. आज हें विद्यालय अखिल कर्नाटकांतील सर्वोत्तम विद्यालयांपैकी एक म्हणून गणले जाते. या शाळेत 500 आवासीय विद्यार्थी असून सर्व प्रकारच्या आधुनिक सुख सुविधांनीयुक्त असे छात्रावास, प्रयोगशाळा, खेळण्याचे मैदान, तरण तलाव इत्यादि अनेक छात्रोपयोगी सोयी विद्यार्थ्यांना उपलब्ध आहेत. ही संस्था म्हणजे श्रीमहाराजांचे एक फार मोठे स्वप्न होते, तें आता पूर्णपणे साकारले आहे, असे म्हणण्यांस हरकत नाही.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 150, right: 150),
                child:Image.asset('assets/images/m.png')),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m7.png')),


            Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                      'माणिकप्रभु क्रीडा संकुल',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color(0xFF630F05)),
                    ))),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'माणिकनगरांतील विविध शिक्षण संस्थांमध्ये शिक्षण घेणारे जवळ जवळ 1500 आवासीय विद्यार्थी आहेत. त्या सर्वांच्या बौद्धिक विकासाबरोबर त्यांच्या आध्यात्मिक उन्नतीकडे ही संस्थान लक्ष पुरविते. त्या शिवाय त्यांच्या दैहिक उन्नतीसाठी श्रीसंस्थाननी माणिकनगर सारख्या लहानश्या गावांत अत्याधुनिक सुविधांनीयुक्त असे क्रीडासंकुल उभारले असून त्यांस ''माणिकप्रभु क्रीडा संकुल'' असे नांव देण्यांत आले आहे.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m8.png')),

            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'श्रीसंस्थानचे पंचम पीठाधिपती श्री सिद्धराज माणिकप्रभु महाराज हें उत्तम क्रीडापटू असून स्वत: विद्यार्थ्यांबरोबर खेळत असत. श्रीमहाराजांना क्रिकेट, व्हॉलीबॉल, फुटबॉल इत्यादि खेळांची अतिशय आवड होती व ते सर्व विद्यार्थ्यांना ह्या खेळांत प्राविण्य मिळविण्यासाठी प्रेरणा करीत असत. त्यांच्या या क्रीडाप्रेमामुळे आज माणिकनगरांत क्रिकेट, फुटबॉल, व्हॉलीबाल आदि खेळांसाठी श्री माणिकप्रभु स्टेडियम व भले मोठे मैदान, पोहण्यासाठी अत्याधुनिक असे' 'माणिक सरोवर' 'हे तरण तलाव, इनडोर गेम्स साठी बॅडमिंटनचे अत्याधुनिक कोर्ट, बास्केटबॉलचे कोर्ट आदि अनेक सुविधा श्रीसंस्थाननी विद्यार्थ्यांसाठी उपलब्ध करून दिल्या आहेत.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m9.png')),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'वेळोवेळी अनेक राज्यस्तरीय स्पर्धाही आयोजित केल्या जातात. दर वर्षी फेब्रुवारी महिन्यांत श्री सिद्धराज माणिकप्रभु महाराजांच्या जयंतीचे औचित्य साधून' 'श्री सिद्धराज माणिकप्रभु क्रिकेट टूर्नामेंट' 'आयोजित केला जातो. या स्पर्धेत कर्नाटक, महाराष्ट्र व तेलंगाणातील प्रथितयश अशे क्रिकेट संघ भाग घेतात. आठवडाभर चालणारी ही स्पर्धा या भागांत अत्यंत लोकप्रिय झाली आहे.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m10.png')),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'प्रभूंच्या अंगणांत नाना प्रकारचे खेळ खेळणाऱ्या या विद्यार्थ्यांना पाहून प्रभु हा विश्वाचे खेळ मांडणारा सर्वांत मोठा खेळाडू आहे; याची साक्ष पटते.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 150, right: 150),
                child:Image.asset('assets/images/m.png')),

            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m11.png')),

            Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                      'श्री माणिकप्रभु अनाथालय',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color(0xFF630F05)),
                    ))),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'श्रीप्रभु हा स्वयं निर्नाथ असून सर्व अनाथांचा नाथ आहे. समाजातील गरीब, अनाथ, दलित, व शोषित परिवारांतील बालकांच्या सर्वांगीण विकासाचे महत्त्वपूर्ण असे कार्य हे आपले उत्तरदायित्व आहे, असे जाणून श्री सिद्धराज माणिकप्रभु महाराजांनी' 'श्री माणिकप्रभु अनाथालयाची' 'स्थापना केली. या अनाथालयांत 125 गरीब, अनाथ विद्यार्थी असून त्यांच्या आवासाची, भोजनाची, शिक्षणाची व सर्वांगीण विकासाची नि:शुल्क व्यवस्था श्रीसंस्थानद्वारे केली जाते. सामाजिक उन्नयनाच्या दिशेने हें महत्त्वाचे पाऊल संस्थाननीं उचलले आहे.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 150, right: 150),
                child:Image.asset('assets/images/m.png')),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child:Image.asset('assets/images/m12.png')),

            Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                      'माणिक विद्यालय',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color(0xFF630F05)),
                    ))),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'माणिकनगरातील शैक्षणिक क्रांतीचे बीज श्री शंकर माणिकप्रभु महाराजांनी सन् 1940 साली पेरले. श्रीमहाराजांनी मातृभाषेतून मुलांना प्राथमिक शिक्षण मिळणें हें गरजेचे आहे, म्हणून फक्त 10 विद्यार्थ्याना घेऊन माणिक विद्यालयाची स्थापना केली. आज या विद्यालयांत 500 हून अधिक विद्यार्थी शिक्षण घेत असून ही संस्था निरंतर प्रगतिपथावर अग्रेसर आहे.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF630F05),
                  ),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 150, right: 150),
                child:Image.asset('assets/images/m.png')),

          ],


        ),
        ));
  }
}
