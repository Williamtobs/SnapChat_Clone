import 'package:flutter/material.dart';

// class ListTiles extends StatefulWidget {
//   @override
//   _ListTiles createState() => _ListTiles();
// }

// class _ListTiles extends State<ListTiles> {
//   @override

// ignore: non_constant_identifier_names
ListTile Listiles(BuildContext context, String img, String name) {
  return ListTile(
    tileColor: Colors.white,
    horizontalTitleGap: 10,
    contentPadding: EdgeInsets.only(
      left: 10,
      right: 10,
    ),
    leading: Container(
        margin: EdgeInsets.only(right: 5),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
        alignment: Alignment.center,
        child: Image(
            image: AssetImage(
          img,
        ))),
    title: Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    ),
    subtitle: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(right: 5),
          height: 15,
          width: 17,
          color: Colors.red,
        ),
        Container(
            margin: EdgeInsets.only(right: 5),
            child: Text(
              "New Snap",
              style: TextStyle(color: Colors.red),
            )),
        Text("3m")
      ],
    ),
  );
}
