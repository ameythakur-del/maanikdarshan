import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class DisplaySongs extends StatefulWidget {
  dynamic data;
  String title;

  DisplaySongs({Key? key, required this.data,required this.title}) : super(key: key);

  @override
  State<DisplaySongs> createState() => _DisplaySongsState();
}

class _DisplaySongsState extends State<DisplaySongs> {
  double value = 18;
  String currentUrl = "";
  AudioPlayer audioplayer = AudioPlayer();
  bool isPlyaing = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  @override
  Widget build(BuildContext context) {
    return Container(child: getBuildWidget(widget.data),);
  }


  @override
  void dispose() {
    audioplayer.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();



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
  Future setAudio(String u) async {
    //Repeat song when completed

    if (u != "") {
      currentUrl = u;
      duration = (await audioplayer.setUrl(u))!;
    }
  }
  Widget getBuildWidget(dynamic data){
    if (data['type'] == 'title') {

      return Center(
          child: Text(
            data['text'],
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Manik',
                color: const Color(0xFFA30808),
                fontWeight: FontWeight.w800),
            textAlign: TextAlign.center,
          ));
    } else if (data['type'] ==
        'description') {
      return (widget.title.contains("आरती") ||
          widget.title.contains("भजन") ||
          widget.title
              .contains("चिद्घनैक ज्ञान मंगला") ||
          widget.title.contains("माणिका लोकपालका") ||
          widget.title
              .contains("सच्चित्सुख तव जय हो") ||
          widget.title
              .contains("व्यंके तुज मंगल हो") ||
          widget.title
              .contains("त्रिपुरसुंदरी सुमंगला") ||
          widget.title.contains("प्रार्थना") ||
          widget.title.contains("अष्टक"))
          ? Padding(
          padding: EdgeInsets.only(
              top: 10, left: 30, right: 30),
          child: Center(
            child: Text(
              data['text']
                  .replaceAll('\\n', '\n'),
              style: TextStyle(
                  color: const Color(0xFF393939),
                  fontSize: value,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.justify,
            ),
          ))
          : Padding(
          padding: EdgeInsets.only(
              top: 10, left: 30, right: 30),
          child: Center(
            child: Text(
              data['text']
                  .replaceAll('\\n', '\n'),
              style: TextStyle(
                  color: const Color(0xFF393939),
                  fontSize: value,
                  fontFamily: 'Manik',
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.justify,
            ),
          ));
    } else {
      if (currentUrl != data['text']) {
        setAudio(data['text']);

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
                print("sad 1");
                audioplayer.pause();
              } else {
                print("sad 2");
                audioplayer.play();
              }
            },
            icon: Icon(audioplayer.playing
                ? Icons.pause
                : Icons.play_arrow),
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
                position =
                    Duration(seconds: value.toInt());
                await audioplayer.seek(position);
                //play audio if was stopped
                // await audioplayer.play;
              })
        ]),
      );
    }
  }
}
