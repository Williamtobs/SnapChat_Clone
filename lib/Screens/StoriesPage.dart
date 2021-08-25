import 'package:flutter/material.dart';
import 'package:snapchatclone/Constant/models.dart';
import 'package:snapchatclone/Widgets/appbar.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPage createState() => _FriendsPage();
}

class _FriendsPage extends State<FriendsPage> {
  String title = "Stories";
  String getTitle() {
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar(context, title),
        body: Container(
          alignment: Alignment.topCenter,
          child: ListView(
            children: [
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Friends",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              SingleChildScrollView(
                  padding: EdgeInsets.only(right: 10, left: 18),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: friends.entries
                          .map((entry) => Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 7),
                                    height: 110,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.purple, width: 1.5),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              entry.value.toString())),
                                      borderRadius: BorderRadius.circular(60.0),
                                    ),
                                  ),
                                  Text(entry.key)
                                ],
                              ))
                          .toList())),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text("Subscription",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    )
                  ],
                ),
              ),
              Container()
            ],
          ),
        ));
  }
}
