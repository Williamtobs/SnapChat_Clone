import 'package:flutter/material.dart';
import 'package:snapchatclone/Widgets/appbar.dart';

class Chat extends StatefulWidget {
  @override
  _Chat createState() => _Chat();
}

class _Chat extends State<Chat> {
  String title = "Chat Screen";

  String getTitle() {
    return title;
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        appBar: MyAppBar(context, title),
        body: Container(
          alignment: Alignment.topCenter,
          child: SafeArea(child: Text(getTitle())),
        ));
  }
}
