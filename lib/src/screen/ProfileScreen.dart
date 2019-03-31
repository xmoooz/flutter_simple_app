import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: Colors.greenAccent,

      ),
      backgroundColor: Colors.green,
      body: Text('ProfileScreen'),
    );
  }
}
