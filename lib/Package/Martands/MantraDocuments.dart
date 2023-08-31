import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:maanikdarshan/Package/Martands/Sub/MartandsModel.dart';

import '../sample.dart';

class MantraDocuments extends StatefulWidget {
  final val;
  final String title;
  final int i;
  const MantraDocuments({
    Key? key,
    required this.val,
    required this.title,
    required this.i,
  }) : super(key: key);

  @override
  State<MantraDocuments> createState() => _MantraDocumentsState();
}

class _MantraDocumentsState extends State<MantraDocuments> {
  double value = 18;

  String currentUrl = "";
  AudioPlayer audioplayer = AudioPlayer();
  bool isPlyaing = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
  }

  Future setAudio(String u) async {
    //Repeat song when completed
    if (u != "") {
      currentUrl = u;
      // duration = (await audioplayer.setUrl(u))!;

      try {
        duration = (await audioplayer.setUrl(u))!;
      } on PlayerException catch (e) {
        // iOS/macOS: maps to NSError.code
        // Android: maps to ExoPlayerException.type
        // Web: maps to MediaError.code
        print("Error code: ${e.code}");
        // iOS/macOS: maps to NSError.localizedDescription
        // Android: maps to ExoPlaybackException.getMessage()
        // Web: a generic message
        print("Error message: ${e.message}");
      } on PlayerInterruptedException catch (e) {
        // This call was interrupted since another audio source was loaded or the
        // player was stopped or disposed before this audio source could complete
        // loading.
        print("Connection aborted: ${e.message}");
      } catch (e) {
        // Fallback for all errors
        print(e);
      }
    }
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

    audioplayer.playerStateStream.listen((state) {
      setState(() {
        isPlyaing = state == state.playing;
      });
    });

    audioplayer.durationStream.listen((newDuration) {
      setState(() {
        duration = newDuration!;
      });
    });

    audioplayer.positionStream.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

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
        body: Column(children: [  Slider(
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
        ),(widget.i == 1)
          ?
          Expanded(
            child:   SingleChildScrollView(
          child:
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.val.length,
                itemBuilder: (context, index) {
                  if (widget.val[index]['type'] == 'title') {
                    return Center(
                        child: Text(
                      widget.val[index]['text'].replaceAll('\\n', '\n'),
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Manik',
                          color: const Color(0xFFA30808),
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ));
                  } else if (widget.val[index]['type'] == 'description') {
                    return (widget.title.contains("आरती") || widget.title.contains("भजन") || widget.title.contains("चिद्घनैक ज्ञान मंगला") || widget.title.contains("माणिका लोकपालका") || widget.title.contains("सच्चित्सुख तव जय हो") || widget.title.contains("व्यंके तुज मंगल हो") || widget.title.contains("त्रिपुरसुंदरी सुमंगला") || widget.title.contains("प्रार्थना") || widget.title.contains("अष्टक"))?Padding(
                        padding: EdgeInsets.only(top: 10, left:10, right: 10),
                        child: Text(
                            widget.val[index]['text'].replaceAll('\\n', '\n'),

                            style: TextStyle(
                                color: const Color(0xFF393939), fontSize: value, fontFamily: 'Mukta', fontWeight: FontWeight.w600),

                        )):
                      Padding(
                        padding: EdgeInsets.only(top: 10, left:10, right: 10),
                        child:Text(
                            widget.val[index]['text'].replaceAll('\\n', '\n'),
                            style: TextStyle(
                                color: const Color(0xFF393939), fontSize: value, fontFamily: 'Manik', fontWeight: FontWeight.w600),

                        ));
                  }
                  else{
                    if(currentUrl != widget.val[index]['text']) {
                      setAudio(widget.val[index]['text']);
                    }

                  return Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(51),
                      color: Color(0xFF808080),
                    ),
                    child: Row(children: <Widget>[
                      IconButton(
                        onPressed: () async {
                          if (audioplayer.playing) {
                            audioplayer.pause();
                          } else {
                            audioplayer.play();
                          }
                        },
                        icon: Icon(audioplayer.playing ? Icons.pause : Icons.play_arrow),
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
                          })
                    ]),
                  );
                }})
        )):
        Expanded(child:
        SingleChildScrollView(
            child: Column(children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: widget.val.length,
                  itemBuilder: (context, index) {
                    String audio = "";
                    if(widget.val[index]['audio'] != null){
                      audio = widget.val[index]['audio'];
                    }
                    return MartandsModel(
                      title: widget.val[index]["title"].replaceAll("\\n", "\n"),
                      text: widget.val[index]['text'].replaceAll("\\n", "\n"),
                      size: value,
                      audio: audio, center: true,
                    );
                  })])))
        ],));
  }
  @override
  void dispose() {
    audioplayer.dispose();
    super.dispose();
  }
}
