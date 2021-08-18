import 'package:flutter/material.dart';
import 'package:snapchatclone/Widgets/appbar.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPage createState() => _FriendsPage();
}

class _FriendsPage extends State<FriendsPage> {
  String title = "Friend Screen";
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
