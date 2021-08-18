import 'package:flutter/material.dart';
import 'package:snapchatclone/Widgets/appbar.dart';

class SnapScreen extends StatefulWidget {
  @override
  _SnapScreen createState() => _SnapScreen();
}

class _SnapScreen extends State<SnapScreen> {
  String title = "Camera Screen";

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
