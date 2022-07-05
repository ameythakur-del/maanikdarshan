import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Audio extends StatefulWidget {
  const Audio({Key? key}) : super(key: key);

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
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
    final player = AudioCache(prefix: 'assets/audio/');
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
    return Container(
      padding: EdgeInsets.all(5),
      color: Color(0xFFF09B21),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              formatTime(position),
              style: TextStyle(fontSize: 10),
            ),
            Text(formatTime(duration - position),
                style: TextStyle(fontSize: 10)),
            Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value) async {
                  final Position = Duration(seconds: value.toInt());
                  await audioplayer.seek(position);
                  //play audio if was stopped
                  await audioplayer.release();
                })
          ]),
    );
  }
}
