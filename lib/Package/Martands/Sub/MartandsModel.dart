import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MartandsModel extends StatefulWidget {
  final String text;
  final String title, audio;
  final double size;
  final bool center;
  const MartandsModel({Key? key, required this.text, required this.title, required this.size, required this.audio, required this.center})
      : super(key: key);

  @override
  State<MartandsModel> createState() => _MartandsModelState();
}

class _MartandsModelState extends State<MartandsModel> {
  AudioPlayer audioplayer = AudioPlayer();
  bool isPlyaing = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    setAudio();

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

  Future setAudio() async {
    //Repeat song when completed
    if (widget.audio != "") {
        duration = (await audioplayer.setUrl(widget.audio))!;
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
          (widget.center)?
          Padding(
              padding: EdgeInsets.only(top: 10, left:30, right: 30),
              child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(
                      color: const Color(0xFF393939), fontSize: widget.size, fontFamily: 'Mukta', fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              )):Align(alignment: Alignment.centerLeft,child:
          Padding(
              padding: EdgeInsets.only(top: 10, left:10, right: 10),
              child: Text(
                  widget.text,
                  style: TextStyle(
                      color: const Color(0xFF393939), fontSize: widget.size, fontFamily: 'Mukta', fontWeight: FontWeight.w600),
              ))),
          (widget.audio != "")?
          Container(
            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
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
                    //play audio if was stopped
                    // await audioplayer.play();
                  })
            ]),
          ):Container()
        ]);
  }
// =======


}