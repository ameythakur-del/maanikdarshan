import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mahamantra extends StatefulWidget {
  const Mahamantra({Key? key}) : super(key: key);

  @override
  State<Mahamantra> createState() => _MahamantraState();
}

class _MahamantraState extends State<Mahamantra> {
  final audioplayer = AudioPlayer();
  bool isPlyaing = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();

    setAudio();

    audioplayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlyaing = state == PlayerState.playing;
      });
    });

    audioplayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration as Duration;
      });
    });

    audioplayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    String url = "http://sahitya.manikprabhu.org/gaanmartand/audio_prabhu/bhaktakarya.mp3";
    audioplayer.setSourceUrl(url);
  }

  @override
  void dispose() {
    audioplayer.dispose();
    super.dispose();
  }

  String formatTime(Duration duration) {
    String TwoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = TwoDigits(duration.inHours);
    final minutes = TwoDigits(duration.inMinutes.remainder(60));
    final seconds = TwoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF7F1B0E),
        title: Text(
          "महामंत्र",
          style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(child:
      Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            "श्री भक्तकार्यकल्पद्रुम गुरुसार्वभौम\nश्रीमद्राजाधिराज योगिमहाराज\nत्रिभुवनानन्द अद्वैत अभेद\nनिरञ्जन निर्गुण निरालम्ब\nपरिपूर्ण सदोदित सकलमतस्थापित\nश्री सद्गुरु माणिकप्रभु महाराज की जय॥",
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: const Color(0xFF630F05),
              ),
            ),
            textAlign: TextAlign.center,
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(51),
              color: Color(0xFF7F1B0E),
            ),
            child: Row(children: <Widget>[
              IconButton(
                onPressed: () async {
                  if (isPlyaing) {
                    await audioplayer.pause();
                  } else {
                    await audioplayer.resume();
                  }
                },
                icon: Icon(isPlyaing ? Icons.pause : Icons.play_arrow),
                color: Colors.white,
              ),
              Text(
                formatTime(position),
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Text('/',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Mukta',
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
              Text(formatTime(duration),
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Mukta',
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
              Slider(
                  min: 0,
                  activeColor: Colors.white,
                  inactiveColor: Colors.white,
                  thumbColor: Colors.white,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged: (value) async {
                    position = Duration(seconds: value.toInt());
                    await audioplayer.seek(position);
                    //play audio if was stopped
                    await audioplayer.resume();
                  })
            ]),
          ),

          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
          Text(
            'भक्तकार्यकल्पद्रुम',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: const Color(0xFF630F05),
              )),
            ),
          )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभु हा सद्भक्तांच्या ऐहिक व पारलौकिक कामना पूर्ण करणारा कल्पवृक्ष आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'गुरु सार्वभौम',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभु हा समस्त जगताला मार्गदर्शन करणारा गुरु आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'श्रीमद्राजाधिराज',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभु हा समस्त ऐश्वर्याचा स्वामी व सम्राटांचा सम्राट आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'योगीमहाराज',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभु हा योगियांचा राजा आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'त्रिभुवनानन्द',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभु हा जाग्रति, स्वप्न, सुषुप्ति या तीन्हीं अवस्थांना प्रकाशित करणारा असून आनंदरूप आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'अद्वैत',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभु हा एकरूप असून त्याच्या ठिकाणीं सर्व प्रकारच्या द्वैताचा अभाव आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'अभेद',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभु हा भेदरहित असून सर्वांप्रति समान दृष्टि ठेवणारा आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'निरंजन',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभु हा सर्व प्रकारच्या दोषांपासून अलिप्त आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'निर्गुण',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभु हा सत्त्व, रज, तमादि तीन्हीं गुणांच्या पलीकडचा आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'निरालंब',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभूस कुणाच्याही आधाराची आवश्यकता नाही; तोच सर्वांचा आधार आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'परिपूर्ण',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभूंमध्ये कसलीही न्यूनता नाहीं; तोच सर्व प्रकारची न्यूनता पूर्ण करणारा आहे.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'सदोदित',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'सदोदित श्रीप्रभु हा सदैव प्रकाशमान आहे, त्याचा केव्हांही अस्त होत नाहीं.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'सकलमतस्थापित',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'श्रीप्रभु हा सकल मतांमध्ये सर्वमान्य असून सर्व मतें त्याच्यापासून उगम पावून त्याच्यांतच लीन होतात.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(top: 20, left: 20),
                child:
                Text(
                  'श्री सद्गुरु माणिकप्रभु महाराज की जय',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          Align(alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.only(left: 20),
                child:
                Text(
                  'अशा श्री सद्गुरु माणिकप्रभु महाराजांचा जयजयकार असो.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xFF630F05),
                      )),
                ),
              )),
          SizedBox(height: 20,)
        ],
      ),
    ));
  }
}
