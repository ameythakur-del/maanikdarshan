import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/Martands/Sub/MartandsModel.dart';

import '../sample.dart';

class MantraDocuments extends StatefulWidget {
  final val;
  final String title;
  const MantraDocuments({
    Key? key,
    required this.val,
    required this.title,
  }) : super(key: key);

  @override
  State<MantraDocuments> createState() => _MantraDocumentsState();
}

class _MantraDocumentsState extends State<MantraDocuments> {
  double value = 18;

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
    //Repeat song when completed
    String url = widget.val;
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
            widget.title,
            style: TextStyle(
                fontFamily: 'Mukta',
                fontWeight: FontWeight.w800,
                color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Slider(
              value: value,
              activeColor: const Color(0xFF772200),
              inactiveColor: const Color(0xFF808080),
              onChanged: (double s) {
                setState(() {
                  value = s;
                });
              },
              divisions: 10,
              min: 15.0,
              max: 30.0,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.val.length,
                itemBuilder: (context, index) {
                  if (widget.val[index]['type'] == 'title') {
                    return Center(
                        child: Text(
                      widget.val[index]['text'],
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Mukta',
                          color: const Color(0xFFA30808),
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ));
                  } else if (widget.val[index]['type'] == 'description') {
                    return Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            widget.val[index]['text'].replaceAll('\\n', '\n'),
                            style: TextStyle(
                                color: const Color(0xFF393939), fontSize: value, fontFamily: 'Mukta', fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ));
                  }
                  return   Container(
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
                      Text(formatTime(position), style: TextStyle(color: Colors.white, fontFamily: 'Mukta', fontWeight: FontWeight.w600, fontSize: 18),),
                      Text('/', style: TextStyle(color: Colors.white, fontFamily: 'Mukta', fontWeight: FontWeight.w600, fontSize: 18)),
                      Text(formatTime(duration), style: TextStyle(color: Colors.white, fontFamily: 'Mukta', fontWeight: FontWeight.w600, fontSize: 18)),
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
                  );
                })
          ],
        )));
  }
}
