import 'package:flutter/material.dart';
import 'package:snapchatclone/Widgets/appbar.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreen createState() => _PlayScreen();
}

class _PlayScreen extends State<PlayScreen> {
  String title = "Play Screen";
  String getTitle() {
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(context, title),
        body: Container(
          alignment: Alignment.topCenter,
          child: SafeArea(child: Text(getTitle())),
        ));
  }
}
