import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MartandsModel extends StatefulWidget {
  final String text;
  final String title, audio;
  final double size;
  const MartandsModel({Key? key, required this.text, required this.title, required this.size, required this.audio})
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
    if(widget.audio != "") {
      String url = widget.audio;
      audioplayer.setSourceUrl(url);
    }
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
                      color: const Color(0xFF393939), fontSize: widget.size, fontFamily: 'Mukta', fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              )),
          (widget.audio != "")?
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
          ):Container()
        ]);
  }
// =======


}