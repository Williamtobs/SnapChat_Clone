import 'package:flutter/material.dart';
import 'package:snapchatclone/Widgets/appbar.dart';

class UserLocation extends StatefulWidget {
  @override
  _UserLocation createState() => _UserLocation();
}

class _UserLocation extends State<UserLocation> {
  String title = "Location Screen";
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
