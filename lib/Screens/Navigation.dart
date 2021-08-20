import 'package:flutter/material.dart';
import 'FriendsPage.dart';
import 'Location.dart';
import 'Play.dart';
import 'Camera.dart';
import 'Chat.dart';

class Routes extends StatefulWidget {
  @override
  _Routes createState() => _Routes();
}

class _Routes extends State<Routes> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _pages = <Widget>[
    UserLocation(),
    Chat(),
    SnapScreen(),
    FriendsPage(),
    PlayScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _pages.elementAt(_selectedIndex)),
        bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.black,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.red,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption: new TextStyle(
                        color: Colors
                            .yellow))), // sets the inactive color of the `BottomNavigationBar`
            child: BottomNavigationBar(
                // selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.white,
                currentIndex: _selectedIndex,
                iconSize: 35,
                onTap: _onItemTapped,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.location_on_outlined,
                        color: Colors.green,
                      ),
                      icon: Icon(Icons.location_on_outlined),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: Icon(Icons.mark_chat_unread_outlined,
                          color: Colors.blue),
                      icon: Icon(Icons.mark_chat_unread_outlined),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.yellow,
                      ),
                      icon: Icon(Icons.camera_alt_outlined),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon:
                          Icon(Icons.people_outline, color: Colors.purple),
                      icon: Icon(Icons.people_outline),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.play_arrow_outlined,
                        color: Colors.red,
                      ),
                      icon: Icon(Icons.play_arrow_outlined),
                      label: ''),
                ])));
  }
}
