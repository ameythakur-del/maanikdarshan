import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class utsav extends StatelessWidget {
  utsav({Key? key}) : super(key: key);
  final String titleBanner = "assets/images/Utsav_Title.png";
  final List<String> titles = [
    'श्रीदत्तजयंती महोत्सव',
    'वेदांत सप्ताह महोत्सव',
    'इतर उत्सव',
    'माणिक पौर्णिमा पर्व',
  ];
  final List<String> images = [
    'assets/images/u1.png',
    'assets/images/darshaniya_sthale/2.png',
    'assets/images/darshaniya_sthale/3.png',
    'assets/images/darshaniya_sthale/4.png',
    'assets/images/darshaniya_sthale/5.png',
    'assets/images/darshaniya_sthale/6.png',
    'assets/images/darshaniya_sthale/7.png',
    'assets/images/darshaniya_sthale/8.png',
    'assets/images/darshaniya_sthale/9.png',
    'assets/images/darshaniya_sthale/10.png',
    'assets/images/darshaniya_sthale/11.png',
    'assets/images/darshaniya_sthale/12.png',
    'assets/images/darshaniya_sthale/13.png',
    'assets/images/darshaniya_sthale/14.png',
  ];

  final List<String> descriptions = [
    'माणिकनगरचा सर्वात मोठा व सर्वांत महत्त्वपूर्ण उत्सव म्हणजे श्री दत्त जयंती महोत्सव होय. श्रीप्रभु महाराजांनी 1845 सालीं माणिकनगरची स्थापना करून या ठिकाणीं दत्ताची गादी स्थापन केली; तेंव्हापासून हा महोत्सव साजरा होत आला आहे. श्रीप्रभूंनी सन् 1865चा दत्तजयंती महोत्सव चालू असतानाच मार्गशीर्ष शुक्ल एकादशी - गीता जयंतीच्या दिवशीच संजीवनी महासमाधीत प्रवेश केला. समाधीची वार्ता अत्यंत गुप्त ठेवण्यांत आली असली तरी दत्त जयंतीच्या दिवशी प्रभूंच्या सगुण स्वरूपाचे दर्शन न झाल्यामुळे भक्तजन साशंक झाले आणि नंतर समाधीची वार्ता फुटून वार्यासारखी पसरली. हल्ली हा महोत्सव प्रभूंच्या पुण्यतिथीस म्हणजे मार्गशीर्ष शुक्ल एकादशीला प्रारंभ होऊन श्रीदत्तजयंती म्हणजेच मार्गशीर्ष पौर्णिमेपर्यंत अत्यंत वैभवाने साजरा होत असतो.या महोत्सवांत भारतांतूनच नव्हें तर परदेशातूनही सर्व धर्माचे व सर्व जातीजमातीचे लाखो भाविक माणिकनगरी एकत्रित होतात. अनेक वैदिक विद्वान्, शास्त्री, पंडित, हरिदास, कीर्तनकार, गायक, वादक, नर्तक इत्यादि आपापल्यापरीनें प्रभूंची सेवा करण्यांस उत्सुक असतात. संपूर्ण महोत्सवांत विशेषेकरून जयंतीच्या दिवशी लाखो भक्तजन भंडारखान्यांत होत असलेल्या मुक्तद्वार अन्नदानांत प्रसाद पावून तृप्त होतात. या महोत्सवांत माणिकनगरांस पाहून इंद्राच्या अमरावतीनेही लाजावे, अशी शोभा असते.',
    'भव्य अशा सिंहद्वारातून प्रवेश केल्यावर आपण प्रभुमंदिर परिसराच्या पटांगणांत पोचतो. हें पटांगण अत्यंत विस्तृत असून बागबगीच्यांनी व कारंजांनी सुशोभित आहे. या पटांगणांतून चढून वर गेल्यावर प्रभु मंदिराचे महाद्वार लागते. हें महाद्वार ओलांडतांच भव्य अशा आनंद मंटपांत आपण पोंचतो. या ठिकाणी भजन-कीर्तनाचे कार्यक्रम होत असतात. त्या नंतर प्रभु मंदिराचे कैलास मंटप लागते. भव्य अशा महरपीदार दगडी मंटपांत संगमरमरी फर्शी असून या मंटपांच्या छतांस हैदराबादच्या निजामांनी दिलेले भलेमाठे झुंबर टांगले गेले आहे. इथून वर प्रभूंच्या समाधी मंदिराचे गर्भगृह आहे. गर्भगृहांत श्रीप्रभूंची दिव्य संजीवनी समाधि असून समाधीच्या मागे प्रभूंनी स्वयं स्थापित केलेली श्रीदत्ताची गादी आहे.',
    'भव्य अशा सिंहद्वारातून प्रवेश केल्यावर आपण प्रभुमंदिर परिसराच्या पटांगणांत पोचतो. हें पटांगण अत्यंत विस्तृत असून बागबगीच्यांनी व कारंजांनी सुशोभित आहे. या पटांगणांतून चढून वर गेल्यावर प्रभु मंदिराचे महाद्वार लागते. हें महाद्वार ओलांडतांच भव्य अशा आनंद मंटपांत आपण पोंचतो. या ठिकाणी भजन-कीर्तनाचे कार्यक्रम होत असतात. त्या नंतर प्रभु मंदिराचे कैलास मंटप लागते. भव्य अशा महरपीदार दगडी मंटपांत संगमरमरी फर्शी असून या मंटपांच्या छतांस हैदराबादच्या निजामांनी दिलेले भलेमाठे झुंबर टांगले गेले आहे. इथून वर प्रभूंच्या समाधी मंदिराचे गर्भगृह आहे. गर्भगृहांत श्रीप्रभूंची दिव्य संजीवनी समाधि असून समाधीच्या मागे प्रभूंनी स्वयं स्थापित केलेली श्रीदत्ताची गादी आहे.',
    'श्रीप्रभु हे साक्षात् दत्तात्रेय आहेत. श्रीप्रभु केवल माधुकरी भिक्षेचे अन्न सेवीत असत. आजही श्रीप्रभूंस माधुकरी भिक्षेचे अन्नच नैवद्य म्हणून समर्पित केले जाते. प्रभूंच्या माधुकरी भिक्षेचे हे कक्ष असून या ठिकाणी श्री बाबासाहेब महाराजांनी घडवून आणलेली श्री दत्तमूर्ती प्रस्थापित केली गेली आहे. पूर्वी ही दत्तमूर्ती श्री सर्वेश्वरच्या मंदिरात होती. औदुंबर वृक्षाची छाया आणी माधुकरी भिक्षेचे औचित्य साधून ई. स. 2015 साली या दत्तमंदिराचे निर्माण करून श्रीदत्त प्रभूंना या ठिकाणी प्रस्थापित केले गेले आहे.',
    'ई. स. 1857 च्या स्वातंत्र्य संग्रमाला श्रीप्रभूंचे पूर्ण सहकार्य होते. निज़ाम व ब्रिटिश पोलिसांचा प्रभूंजवळ असणाऱ्या ब्रह्मचाऱ्यांस उपद्रव होऊ लागला, तेव्हां श्रीप्रभूंनी हे सटके अभिमंत्रित करून प्रत्येक रह्मचाऱ्यांस दिले होते. त्यामुळे त्यांचे रक्षण झाले. युद्ध संपल्यावर प्रभूंनी ते सटके परत मागवून घेतले. अशे 1200 सटके या ठिकाणी सुरक्षित ठेविले आहेत. या सटक्यांना प्रभूंचा दिव्य स्पर्श झाला असल्यामुळे यांचे अनन्यसाधारण महत्व असून प्रतिवर्षी श्री दत्त जयंती उत्सवाचा प्रारंभ या योगदंडांच्या पूजनाने होतो.',
    'श्री माणिकप्रभूंच्या आगमनाच्या आधी अज्ञातकालापासून हा सर्वेश्वर या ठिकाणी प्रस्थापित आहे. श्रीप्रभूंचा मेणा झाडीत अडकल्यामुळे प्रभु या ठिकाणी उतरले आणि या सर्वेश्वराच्या कट्ट्यावर बसले. या दृष्टीने हा सर्वेश्वर माणिकनगरचा आद्य दैवत होय. कै. बाबासाहेब महाराजांनी ई. स. 1922 साली या सर्वेश्वर मंदिराचे जीर्णोद्धार करून या ठिकाणी दत्त मूर्ति प्रस्थापित केली होती. प्रभुमंदिराच्या विस्तारकार्यात या सर्वेश्वर मंदिराचे ई. स. 2015 साली पुनः जीर्णोद्धार करण्यांत आले आहे.',
    'प्रभु संस्थानचें तृतीय आचार्य श्री मार्तंड माणिकप्रभु महाराज व चतुर्थ आचार्य श्री शंकर माणिकप्रभु महाराजांच्या संयुक्त देवालयाला \'मुक्तिमंटप\' असे म्हणतात. या संयुक्त देवालयाचे बांधकाम श्री सिद्धराज माणिकप्रभु महाराजांनी सन् १९७० साली पूर्ण केले. मकरानाहून आणविलेल्या शुभ्र संगमरमरी दगडांनी हें देवालय बांधले गेले असून दोन्हीं समाधींच्या मध्यभागी भव्य असे एक मंटप असून त्या ठिकाणीं चैतन्यलिंग महादेवाची स्थापना करण्यांत आली आहे. या देवालयाच्या शेजारीच श्री सिद्धराज माणिकप्रभु महाराजांच्या समाधी मंदिराचे बांधकाम सध्या चालू आहे.',
    'माणिकनगरांत श्रीदत्तात्रेयांची उपासना त्यांच्या मधुमती शक्ती समवेत होते. श्री मधुमती श्यामलाच श्रीप्रभूंची परम शिष्या देवी व्यंकम्माच्या रूपांत अवतरली असून ती भक्तांचे सर्व मनोरथ पुरविते. देवी व्यंकम्मानी भजन करीत देहत्याग केला, त्यांचे समाज बांधव जेंव्हा अंत्यक्रियेसाठी आले, तेंव्हा देवींच्या पार्थिव देहातून ॐकार ध्वनी निघत असल्याचे आढळले. तेंव्हा श्रीप्रभु स्वत: त्या ठिकाणीं आले, प्रभु येताच व्यंकम्मा समाधीतून जागे झाल्यासाखी उठली व प्रभूंना अंतिम नमस्कार करून पुनः निश्चेष्ट होऊन पडली. प्रभूंनी स्वतःच्या देखरेखीत व्यंकम्माची समाधिविधी पूर्ण करविली. पुढे श्री मार्तंड माणिकप्रभु महाराजांनी देवी व्यंकम्माचे भव्य देवालय बांधवून पूजा, अर्चा, नवरात्र, आदि उत्सव महोत्सव करण्याची परिपाटी प्रारंभ केली. देवी व्यंकम्माचे देवालय हें माणिकनगरचें शक्तिपीठ असून भक्तजनांच्या आत्यंतिक श्रद्धेचे स्थान आहे.',
    'माणिकनगरांत श्रीदत्तात्रेयांची उपासना त्यांच्या मधुमती शक्ती समवेत होते. श्री मधुमती श्यामलाच श्रीप्रभूंची परम शिष्या देवी व्यंकम्माच्या रूपांत अवतरली असून ती भक्तांचे सर्व मनोरथ पुरविते. देवी व्यंकम्मानी भजन करीत देहत्याग केला, त्यांचे समाज बांधव जेंव्हा अंत्यक्रियेसाठी आले, तेंव्हा देवींच्या पार्थिव देहातून ॐकार ध्वनी निघत असल्याचे आढळले. तेंव्हा श्रीप्रभु स्वत: त्या ठिकाणीं आले, प्रभु येताच व्यंकम्मा समाधीतून जागे झाल्यासाखी उठली व प्रभूंना अंतिम नमस्कार करून पुनः निश्चेष्ट होऊन पडली. प्रभूंनी स्वतःच्या देखरेखीत व्यंकम्माची समाधिविधी पूर्ण करविली. पुढे श्री मार्तंड माणिकप्रभु महाराजांनी देवी व्यंकम्माचे भव्य देवालय बांधवून पूजा, अर्चा, नवरात्र, आदि उत्सव महोत्सव करण्याची परिपाटी प्रारंभ केली. देवी व्यंकम्माचे देवालय हें माणिकनगरचें शक्तिपीठ असून भक्तजनांच्या आत्यंतिक श्रद्धेचे स्थान आहे.',
    'श्रीप्रभु मंदिराच्या सिंहद्वाराच्या अगदी समोर गुरुगंगा नदीच्या उत्तरतीरावर श्रीकालाग्निरुद्र मारुतीचे देवालय आहे. हा मारुती माणिकनगरचा क्षेत्ररक्षक असून श्री मार्तंड माणिकप्रभु महाराजांनी सन् 1916 साली या मारुतीची प्रतिष्ठापना केली. हा मारुती अत्यंत उग्र असून सर्व प्रकारच्या उपद्रवांपासून श्रीक्षेत्राचे संरक्षण करतो म्हणून याची स्तुति करीत श्री मार्तंड माणिकप्रभु महाराज म्हणतात - माणिकक्षेत्र अभिमान रक्षणदक्ष। पूर्ण चिन्मार्तंड कामफलदाता।।',
    'श्रीप्रभूंकडे एक साधू आला होता. तो सतत 12 वर्षे एक मारुतीची मूर्ती डोक्यावर घेऊन हिंडत होता. काही केल्या मारुती त्याच्या डोक्यावरून उतरत नसे. या गोष्ठीचा त्याला त्रास होत असे; म्हणून तो प्रभूंकडे आला. प्रभूंकडे येताच मारुतीची मूर्ती हलकी होऊन त्याच्या डोक्यावरचा भार कमी झाल्याचे त्याला जाणवले. प्रभूंनी मारुतीची ती मूर्ती उतरवून घेतली व त्या साधूची सुटका केली. नंतर प्रभूंनी स्वत: त्या मूर्तीची प्राणप्रतिष्ठा केली. प्रभूंचे अग्रज श्री हनुमंत दादामहाराजांनी त्यावर भव्य असे देवालय बांधविले. अशा प्रकारे माणिकनगरच्या ग्रामदेवतेची स्थापना झाली.',
    'प्रभूंच्या सर्वसमावेशक अशा सकलमत संप्रदायांस अनुसरून माणिकनगर येथे प्रभूंच्या लिंगायत मतावलंबी भक्तांसाठी एक मठ असावे; या हेतूने श्री मार्तंड माणिकप्रभु महाराजांनी या वीरशैव मठाची स्थापना केली. येथील पूजा-अर्चा आदि सर्व व्यवस्था श्रीसंस्थान तर्फे मुद्दाम नेमलेल्या जंगामकडून होत असते. श्रावणमासांत येथे विशेष पूजा संपन्न होते.',
    'श्रीप्रभूंना त्यांचे मुसलमान भक्त महबूब सुबहानीचा अवतार मानीत असत व प्रभूंना ते पीरानेपीर दस्तगीर म्हणत असत. आपल्या समाधीनंतर हिंदू व मुसलमान भक्तांमध्ये तंटा होऊ नये म्हणून श्रीप्रभूंनी स्वतः माणिकनगरच्या उत्तरेला असलेल्या टेकडीवर आपल्या डोक्यावरील मंदील ठेऊन त्यावर स्वत:चीच तुरबत उभारली आणि आपल्या सर्व मुसलमान भक्तांना म्हणाले की "आज पासून तुमच्या साठी मी या ठिकाणी बसलो आहे. तुमच्या धर्माप्रमाणें तुम्हाला जी उपासना करायवाची असेल, ती तुम्हीं इथे करावी.” प्रभूंनी स्वत: बांधविलेल्या या जागेस महबूब सुबहानीचा दर्गा किंवा महबूब सुबहानीचा चिल्ला असे म्हणतात. श्रीसंस्थान मार्फत मुसलमानी रिवाजाप्रमाणें या दर्ग्याची सर्व व्यवस्था केली जाते. मोहर्रमच्या महिन्यांत इथे ताजिये बसविले जातात; श्रीमहाराज स्वत: याठिकाणीं येऊन ताजियांची जियारत करतात. महबूब सुबहानीच्या पुण्यतिथी दिवशी म्हणजे ग्यारहवीं शरीफ रोजी इथे विशेष जियारत होऊन फकीरांना अन्नदान केले जाते. हा दर्गा म्हणजे प्रभूंच्या सकलमत सिद्धांताचा जाज्ज्वल्यमान असा प्रमाण आहे. हिंदू व मुसलमान दोन्हीं धर्माचे लोकांचे हें श्रद्धास्थान आहे.',
    '\“आम्हां क्षेत्र माणिकनगर । तीर्थसंगम महिमा थोर ।\n जेथे गुरुगंगा विरजा पवित्र । ऐक्य होऊनि वाहती।।\”\n माणिकनगरच्या दक्षिणेला गुरुगंगा वाहते आणि पूर्वेहून विरजा येऊन आग्नेय दिशेस या दोन्हीं नद्यांचे पवित्र संगम होते. या संगम परिसरांत प्रभूंच्या मातोश्री बयादेवी, प्रभूंचे अग्रज श्री दादा महाराज, प्रभूंचे अनुज श्री तात्या महाराज व श्री सिद्धराज माणिकप्रभूंच्या मातोश्री लक्ष्मीबाई साहेबांच्या समाध्या आहेत. यांच परिसरांत श्री मार्तंड माणिकप्रभूंचे ज्येष्ठ चिरंजीव श्री बाबासाहेब महाराजांचे स्मारक असून त्या समोर अत्यंत मनोरम अशी दगडी पुष्करणी आहे. हे परिसर अत्यंत रमणीय, प्रशांत व एकांत असे असून साधकांना साधना करण्यासाठी ही जागा अत्यंत पवित्र व योग्य अशी आहे.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF7F1B0E),
        title: Text(
          "माणिकदर्शन",
          style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(child:
      Column(
        children: [
          Padding(padding: EdgeInsets.all(20), child: Image.asset(titleBanner)),
          Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                'श्रीदत्तजयंती महोत्सव',
                style: TextStyle(
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: const Color(0xFF630F05)),
              ))),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'माणिकनगरचा सर्वात मोठा व सर्वांत महत्त्वपूर्ण उत्सव म्हणजे श्री दत्त जयंती महोत्सव होय. श्रीप्रभु महाराजांनी 1845 सालीं माणिकनगरची स्थापना करून या ठिकाणीं दत्ताची गादी स्थापन केली; तेंव्हापासून हा महोत्सव साजरा होत आला आहे. श्रीप्रभूंनी सन् 1865चा दत्तजयंती महोत्सव चालू असतानाच मार्गशीर्ष शुक्ल एकादशी - गीता जयंतीच्या दिवशीच संजीवनी महासमाधीत प्रवेश केला. समाधीची वार्ता अत्यंत गुप्त ठेवण्यांत आली असली तरी दत्त जयंतीच्या दिवशी प्रभूंच्या सगुण स्वरूपाचे दर्शन न झाल्यामुळे भक्तजन साशंक झाले आणि नंतर समाधीची वार्ता फुटून वार्यासारखी पसरली. हल्ली हा महोत्सव प्रभूंच्या पुण्यतिथीस म्हणजे मार्गशीर्ष शुक्ल एकादशीला प्रारंभ होऊन श्रीदत्तजयंती म्हणजेच मार्गशीर्ष पौर्णिमेपर्यंत अत्यंत वैभवाने साजरा होत असतो. या महोत्सवांत भारतांतूनच नव्हें तर परदेशातूनही सर्व धर्माचे व सर्व जातीजमातीचे लाखो भाविक माणिकनगरी एकत्रित होतात. अनेक वैदिक विद्वान्, शास्त्री, पंडित, हरिदास, कीर्तनकार, गायक, वादक, नर्तक इत्यादि आपापल्यापरीनें प्रभूंची सेवा करण्यांस उत्सुक असतात. संपूर्ण महोत्सवांत विशेषेकरून जयंतीच्या दिवशी लाखो भक्तजन भंडारखान्यांत होत असलेल्या मुक्तद्वार अन्नदानांत प्रसाद पावून तृप्त होतात. या महोत्सवांत माणिकनगरांस पाहून इंद्राच्या अमरावतीनेही लाजावे, अशी शोभा असते.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
          child:Image.asset('assets/images/u1.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'महोत्सव जरी एकादशीला प्रारंभ होत असले तरी शुक्ल नवमीच्या दिवशी संपूर्ण प्रभु मंदिर स्वच्छ धुतले जाऊन गर्भगृहांत पाणी साठवले जाते. श्रीमहाराज या तीर्थांत स्नान करून प्रभूंची आरती करतात. नंतर हे तीर्थ उपस्थित असलेल्या सहस्रावधि भक्तांवर शिंपडण्यांत येते. या विधीला तीर्थस्नान असे म्हणतात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u2.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'श्री प्रभूंनी 1857 सालच्या स्वातंत्र्य युद्धांत आपल्या जवळ असलेल्या 1200 ब्रह्मचाऱ्यांना आत्मरक्षणासाठी एक एक सटका अभिमंत्रित करून दिला होता. अशे 1200 सटके संस्थानांत जपून ठेवलेले आहेत. नवमीच्या दिवशी ते सर्व सटके बाहेर काढले जातात व धुवून पुसून स्वच्छ करून पुन्हां व्यवस्थित ठेवले जातात. या विधीला योगदंड पूजन असे म्हणतात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u3.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'शुक्ल दशमीच्या दिवशी महोत्सवाच्या निर्विघ्नतापूर्ण परिसमाप्ती साठी सहस्रमोदक गणेशयाग, चंडी पारायण, प्रभु सामधीस गणपति अथर्वशीर्षाच्या सहस्रावर्तनाचे अभिषेक इत्यादि विधि केले जातात. सायंकाळी श्रीमहाराज स्वतः माणिकनगरच्या प्रत्येक मंदिरांत वाजत-गाजत जाऊन उत्सवाची निमंत्रण पत्रिका त्या त्या देवतेला समर्पित करून आरती करतात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u4.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'मार्गशीर्ष शुक्ल एकादशी, गीता जयंतीच्या पहाटे गावातील सर्व सुवासिनी स्त्रियांसहित श्रीमहाराज काकडाऽरती साठी प्रभु मंदिरांत जातात. शेंकडों सुवासिनींनी आणलेल्या आरतीच्या तबकांतून प्रभूंची काकडारती संपन्न होते. त्या नंतर महान्यास, लघुन्यासपूर्वक महारुद्राभिषेक संपन्न होऊन श्रीसमाधीस महाराज मंगलस्नान घालतात. समाधीचे अलंकार झाल्यावर महाऽरती केली जाते. नंतर राजोपचार सेवा संपन्न होते. या सेवेत चार वेद, सहा शास्त्र, नृत्य, गायन व वाद्य अशा सेवा समर्पित होऊन पुण्यतिथीची ही महापूजा संपन्न होते. एकादशीच्या दुपारी प्रभुमंदिराच्या कैलास मंटपांत समाराधनेचा विधी अत्यंत वैभवाने पार पडतो. पुण्यतिथीनिमित्त 13 वैदिक ब्राह्मणांना बसवून श्रीमहाराज स्वत: त्यांची शोडषोपचारे पूजा करून त्यांना भोजन समर्पित करतात. या पूजेचा व ब्राह्मण भोजनाचा थाट अत्यंत वैभवपूर्ण असतो. नंतर त्या ब्राह्मणांच्या पादोदकाने भरलेले सुवर्णकलश डोक्यावर घेऊन श्रीमहाराज भजनानंदांत लीन होतात. हा सोहळा अपूर्व असा असतो.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u5.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'मार्गशीर्ष शुक्ल द्वादशीच्या दिवशी सकाळी श्रीमहाराज श्रीसंस्थानच्या सर्व इतमामांसह भजन करीत गुरुगंगा-विरजा या नद्याच्या संगमस्थळी असलेल्या नृसिंहतीर्थात सविधि स्नान करून जमलेल्या सर्व विप्रवर्गास दक्षिणा देऊन परत येतात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u6.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'द्वादशीच्या दुपारी पुन्हां एकादशी सारखीच महान्यास, लघुन्यास, महारुद्राभिषेकयुक्त महापूजा संपन्न होउन महानैवेद्य समर्पित केला जातो. महाऽरती नंतर राजोपचार समर्पित होऊन भंडारखान्यांत फार मोठ्या प्रमाणावर अन्नदान केला जातो.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u7.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'मार्गशीर्ष शुक्ल त्रयोदशीच्या दुपारी प्रभु मंदिरात सभा भरवून श्रीमहाराज पुण्यतिथी निमित्त जमलेल्या सर्व ब्राह्मणांस, जंगमांस, फकीरांस, याचकांस, गोर गरीबास मुक्त हस्ताने दक्षिणा वाटतात. याच वेळी जमलेले अनेक गुणी कलाकार आपली संगीत सेवाही सादर करतात. या कार्यक्रमांस दक्षिणा दरबार असें म्हणतात. ही परंपरा आद्य प्रभूंच्या काळापासून चालत आलेली आहे. समाधीच्या पूर्वरात्री प्रभु दरबारांत बसून रात्रभर खैरात वाटीत होते, असा चरित्रांत उल्लेख असल्यामुळे या कार्यक्रमाचे विशेष ऐतिहासिक महत्त्व आहे.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u8.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'मार्गशीर्ष शुक्ल चतुर्दशीच्या दिवशी दुपारी सांप्रदायिक मंत्रदीक्षा प्राप्त भक्तजन गुरुपूजन संपन्न करतात. श्रीमहाराज प्रत्येकाची पूजा स्वीकारून सर्वास प्रसाद देतात. नवीन मंत्रदीक्षा घेणारे सद्भक्त याच दिवशी श्रीमहाराजांकडून मंत्रोपदेश घेतात. अशा प्रकारें हा सबंध दिवस गुरुपूजनांत निघून जातो. रात्री मोठ्या प्रमाणांत अन्नदानाचे आयोजन केले जाते.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u9.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'मार्गशीर्ष पौर्णिमा म्हणजेच श्रीदत्तजयंती. याच दिवशी लाडवंती या गावी श्री मनोहर नाईक व सौ. बयादेवी या सच्छील दंपतीच्या घरी श्रीदत्तप्रभु श्रीमाणिकप्रभूंच्या रूपांत अवतरले. हाच महोत्सवाचा सर्वात महत्त्वाचा दिवस. दिवसभर हजारों भक्तजन रांगेत उभे राहून श्रीप्रभु समाधीचे दर्शन घेतांत व नंतर श्रीमहाराजांना भेटून त्यांच्याकडून प्रसाद घेण्यांत धन्यता मानतात. सायंकाळी श्रीमहाराज संस्थानच्या सर्व वैभवांसह श्रीप्रभूंच्या जन्मोत्सवाच्या राजोपचार महापूजेसाठी प्रभु मंदिरांत जातात. ही महापूजा पाहण्यासाठी तुंबळ गर्दी उडालेली असते. शेकडो वैदिक विद्वानांच्या उपस्थितीत महान्यास, लघुन्यासपूर्वक महारुद्राभिषेक संपन्न केले जाते. श्री समाधीवर अनेक घागरी दूध, दही, मध इत्यादि घातले जाऊन पंचामृत स्नान संपन्न होते. त्या नंतर गंगा, यमुना, नर्मदा, गोदावरी, कृष्णा कावेरी इत्यादि पवित्र नद्यांच्या केशरयुक्त सुगंधित जलाने श्रीमहाराज श्रीसमाधीस मंगल स्नान घालतात. नंतर नूतन महावस्त्र व नूतन अलंकार समर्पित केले जाऊन महानैवेद्य समर्पित केला जातो.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u10.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'मध्यरात्रीच्या सुमारांस महाआरती संपन्न होते. नंतर राजोपचार सेवा अर्पित केली जाते. या सेवेत श्रीमहाराज स्वतः वेदांतशास्त्राची सेवा समर्पित करतात. गायन सेवेच्या वेळी एका चांदीच्या पाळण्यांत प्रभूंच्या पादुका झुलवून गायन सेवा समर्पित केली जाते. त्या नंतर ''माणिका लोकपालका'' या पदाचे तुमुल निनादांत गायन होऊन पुष्पवृष्टिपूर्वक अजन्मा अशा प्रभूंचा जन्मोत्सव साजरा केला जातो. नंतर नृत्य-वाद्य इत्यादि सेवा समर्पित होऊन पहाटेच्या वेळी ही जन्मोत्सवाची राजोपचार पूजा संपन्न होते. राजोपचार म्हणजे एका चक्रवर्ती सम्राटाला जे जे उपचार समर्पित केले जातात ते सर्व उपचार खरोखर आणि प्रत्यक्ष राजाधिराज असे ब्रीद गाजविणाऱ्या प्रभूला समर्पित केले जातात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u11.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'पहाटे पासून सकाळ पर्यंत भंडारखान्यांत जवळ जवळ एक लाख लोक महाप्रसादाचा लाभ घेतात. महा प्रसादाच्या या पंक्तीत श्रीप्रभु स्वतः कुठल्यातरी वेषांत स्वत: येऊन बसतात अशी दृढ मान्यता असल्यामुळे जमीनीवर पडलेला व भक्तांच्या पायाखाली आलेला अन्नाचा शीत देखील परम पवित्र असतो, अशा भावनेने सर्व जाती जमातीचे श्रीमंत-गरीब स्त्री-पुरुष अवेळी घडणार्या या महाप्रसादाचा लाभ घेताना पाहून डोळ्याचे पारणे फिटतात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u12.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'मार्गशीर्ष कृष्ण प्रतिपदेच्या रात्री प्रभुमंदिराच्या पटांगणांत श्रीप्रभूंचा दिव्य, भव्य व ऐतिहासिक असा सिंहासन मांडला जातो. विविध प्रकारच्या सुवासिक फुलांनी सभामंटप शृंगारले जाते. छत्र-चामरादि सर्व वैभवांसहित श्रीमहाराजांची स्वारी सभामंडपांत येऊन भक्तकार्याच्या जयघोषांत सिंहासनारूढ होताच प्रभूंच्या जन्माचे कीर्तन व त्या नंतर आरती होऊन पुष्पवृष्टीपूर्वक प्रभूंचा जन्मोत्सव साजरा केला जातो. या सभेला दरबार अ म्हणतात. याच सभेत श्रीसंस्थानचे सचिव सर्व भक्तजनांसमोर संस्थानचे वार्षिक प्रतिवेदन प्रस्तुत करतात. नंतर संगीत सभा प्रारंभ होते. या दरबारांत हजेरी लावण्यासाठी अनेक प्रथितयश कलाकार सतत प्रयत्न करीत असतात. कारण या दरबारांत हजेरी लागल्याशिवाय कलाकाराची साधना पूर्ण होत नाही, अशी गुणीजनांत मान्यता आहे. प्रभूंच्या त्या दिव्य सिंहासनावर बसून श्रीमहाराज रांगेत उभे असलेल्या हजारों भक्तांना रात्रभर प्रसाद देत असतात. श्रीहस्ते प्रसाद घेउन जाणार्यांची ही रांग सकाळ झाली तरी संपत नाही.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u13.png')),

          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'सकाळी दरबारांतून उठल्यावर श्रीमहाराज प्रभुमंदिरांत जाऊन प्रभूंची आरती करतात. नंतर वाद्यांच्या तुमुल निनादांत व हजारों भक्तांच्या जयघोषांत शोभायात्रा प्रारंभ होते. गावातील प्रत्येक मंदिरांत जाऊन श्रीमहाराज आरती करतात. गावातील मार्गात प्रत्येक घरासमोर सडा, रांगोळी, तोरण व पुष्पमालेने महाराजांचे स्वागत होते. ही शोभायात्रा दुपारच्या सुमारांस श्रीमार्तंडप्रभूंच्या मंदिरांत पोचते व तिथे आरती झाल्यावर हा महन्मंगल असा दत्तजयंती महोत्सव सर्वार्थाने परिपूर्ण होतो.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),


          Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                    'वेदांत सप्ताह महोत्सव',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: const Color(0xFF630F05)),
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'माणिकनगरचा दुसरा महत्त्वाचा उत्सव म्हणजे वेदांत सप्ताह महोत्सव. फाल्गुन मासांत श्री मार्तंड माणिकप्रभु व श्री शंकर माणिकप्रभु महाराजांच्या पुण्यतिथीस जोडून वेदांत सप्ताह महोत्सव साजरा केला जातो. या महोत्सवांत उभय महाराजांच्या पुण्यतिथी निमित्त त्यांच्या समाधींची महापूजा आराधना इत्यादि धार्मिक कार्यक्रमांसोबत अन्य अनेक कार्यक्रम आयोजित केले जातात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u14.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'प्रभु मंदिरांत श्रीमद्भागवत या ग्रंथाचे पारायण व त्या सोबत विविध भक्तमंडळी द्वारा श्रीमाणिक चरितामृत या ग्रंथाचे सामूहिक पारायण आयोजित केले जाते. अखंड नामस्मरण व भजन हें अहोरात्र चालत असतात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u15.png')),

          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'या सप्ताहांत श्रीमहाराज स्वतः वेदांत शिक्षा शिबिर आयोजित करून वेदांताचे क्लास घेतात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u16.png')),

          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'नित्य रात्रीचे सांप्रदायिक भजन व महाराजांचे प्रवचन हें या उत्सवाचे मुख्य आकर्षण होय.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u17.png')),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'शेवटच्या दिवशी रात्रभर दिण्डीचा कार्यक्रम असतो. या दिण्डीत श्रीमहाराजांसमवेत हजारो भक्तगण देहभान विसरून अत्यंत उत्साहानें भजनानंदांत तल्लीन झालेले असतात. या उत्सवासाठी कर्नाटक, महाराष्ट्र, तेंलंगाणा, आंध्रप्रदेश आदि प्रांतातून हजारो भाविक माणिकनगरांत एकत्रित होतात. भंडारखान्यांत बृहत्प्रमाणावर अन्नदानाचे आयोजन केले जाते.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),

          Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                    'इतर उत्सव',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: const Color(0xFF630F05)),
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'दत्तजयंती व वेदांत सप्ताहाव्यतिरिक्त इतर अनेक लहान मोठे उत्सव वेळोवेळी आयोजित केले जातात. श्री रामनवमी, हनुमान जयंती, गुरु पौर्णिमा, कृष्ण जन्माष्टमी आदि उत्सव अत्यंत श्रद्धेने आणि उत्साहाने साजरे केले जातात. श्रावण मासांत महिनाभर रुद्राभिषेक, बिल्वार्चन, शिवपंचाक्षर स्वाहाकार आदि अनुष्ठान वैभवाने पार पडतात. 11 दिवसांचा गणेशोत्सव व 5 दिवसांचा देवी पंचरात्र उत्सवही फार मोठ्या प्रमाणावर साजरे केले जातात. शिवाय दसरा, दीपावळी, संक्रांती व होळी सारखे सण ही विशेष उत्साहानें साजरे केले जातात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u18.png')),


          Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                    'माणिक पौर्णिमा पर्व',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: const Color(0xFF630F05)),
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'प्रत्येक महीन्याच्या पौर्णिमेला माणिक पौर्णिमा पर्व असें नामाभिधान असून या दिवशी सत्संग आयोजित केला जातो. प्रभूंचे संप्रदाय हें ज्ञानयुक्त भक्तीचे संप्रदाय असल्यामुळे भक्ती ही डोळस असून त्या भक्तीचे पर्यवसान ज्ञानांत झाले पाहिजे, या हेतूने या सत्संगांत श्रीमहाराजांचे बोधप्रद प्रवचन आयोजित केले जाते. प्रभुचरित्र कथन, नामस्मरण व महाराजांचे प्रवचन व त्या नंतर महाप्रसाद असा कार्यक्रम असतो. या कार्यक्रमासाठी दूर दूरहून भक्तजन दर पौर्णिमेला माणिकनगरी येत असतात.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF630F05),
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child:Image.asset('assets/images/u19.png')),



        ],
      ),
      ));
  }
}