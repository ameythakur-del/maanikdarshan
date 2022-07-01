import 'package:flutter_share/flutter_share.dart';
import 'package:flutter/material.dart';

class Share extends StatelessWidget {
  const Share({Key? key}) : super(key: key);

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Share the app using',
        text: 'Download this app',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Share the app'
    );
  }

  @override
  Widget build(BuildContext context) {
    share();
    return Container();
  }
}
