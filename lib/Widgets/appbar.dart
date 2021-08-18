import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar MyAppBar(BuildContext buildContext, String title) {
  return AppBar(
    toolbarHeight: 70,
    elevation: 0,
    backgroundColor: Colors.white,
    title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.black,
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.grey,
              ),
            ),
            onTap: () {},
          ),
          Expanded(
              child: Center(
                  child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          )))
        ]),
    automaticallyImplyLeading: false,
    actions: <Widget>[
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 5),
                alignment: Alignment.center,
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
                child: Icon(
                  Icons.person_add,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 5),
                alignment: Alignment.center,
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
                child: Icon(
                  Icons.edit_notifications_sharp,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
              onTap: () {},
            )
          ]),
    ],
  );
}
