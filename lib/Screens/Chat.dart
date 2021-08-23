import 'package:flutter/material.dart';
import 'package:snapchatclone/Constant/friends.dart';
import 'package:snapchatclone/Widgets/appbar.dart';
// import 'package:snapchatclone/Widgets/ListTiles.dart';

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
        backgroundColor: Colors.white,
        appBar: MyAppBar(context, title),
        body: ListView(
          padding: EdgeInsets.all(0),
          children: friends.entries
              .map((entry) => new ListTile(
                    shape: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    tileColor: Colors.white,
                    horizontalTitleGap: 10,
                    minVerticalPadding: 8,
                    contentPadding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image(
                            fit: BoxFit.fill,
                            height: 60,
                            width: 60,
                            image: AssetImage(entry.value.toString()))),
                    title: Text(
                      entry.key,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.only(right: 5),
                          height: 15,
                          width: 17,
                          color: col[entry.key],
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Text(
                              "New Snap",
                              style: TextStyle(color: col[entry.key]),
                            )),
                        Text("3m")
                      ],
                    ),
                  ))
              .toList(),
        ));
  }
}
