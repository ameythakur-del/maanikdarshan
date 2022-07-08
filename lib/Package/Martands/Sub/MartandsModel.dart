import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MartandsModel extends StatefulWidget {
  final String text;
  final String title;
  const MartandsModel({Key? key, required this.text, required this.title})
      : super(key: key);

  @override
  State<MartandsModel> createState() => _MartandsModelState();
}

class _MartandsModelState extends State<MartandsModel> {
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
    audioplayer.setReleaseMode(ReleaseMode.loop);

    //Load audio form url
    // String url = '';
    // audioplayer.setSourceUrl(url);

    //Load from asset
    final player = AudioCache(prefix: 'asset/audio');
    final url = await player.load('sample.mp3');
    audioplayer.setSourceUrl(url.path);
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
    return Column(
        children: [
          Center(
              child: Text(
                widget.title,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Mukta',
                    color: const Color(0xFFA30808),
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(
                      color: const Color(0xFF393939), fontSize: 18, fontFamily: 'Mukta', fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              )),
          // Container(
          //   height: 25,
          //   color: Color(0xFFF09B21),
          //   child: Row(children: <Widget>[
          //     IconButton(
          //       onPressed: () async {
          //         if (isPlyaing) {
          //           await audioplayer.pause();
          //         } else {
          //           String url = "";
          //           // await audioplayer.play();
          //         }
          //       },
          //       icon: Icon(isPlyaing ? Icons.pause : Icons.play_arrow),
          //       iconSize: 50,
          //     ),
          //     Text(formatTime(position)),
          //     Text(formatTime(duration - position)),
          //     Slider(
          //         min: 0,
          //         max: duration.inSeconds.toDouble(),
          //         value: position.inSeconds.toDouble(),
          //         onChanged: (value) async {
          //           final Position = Duration(seconds: value.toInt());
          //           await audioplayer.seek(position);
          //           //play audio if was stopped
          //           await audioplayer.release();
          //         })
          //   ]),
          // )
        ]);
  }
// =======


}