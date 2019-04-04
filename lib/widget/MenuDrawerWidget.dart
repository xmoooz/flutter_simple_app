import 'package:flutter/material.dart';
import 'package:flutter_simple_app/screen/AboutScreen.dart';
import 'package:flutter_simple_app/screen/ProfileScreen.dart';

class MenuDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            accountName: Text('username'),
            accountEmail: Text('email'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
              ? Colors.blue : Colors.deepPurpleAccent,
              child: Text('P'),
            ),
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutScreen()));
            },
            leading: Icon(Icons.print),
          ),
        ],
      ),
    );
  }
}
