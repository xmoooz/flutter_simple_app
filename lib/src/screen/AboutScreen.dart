import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
        backgroundColor: Colors.purpleAccent,
      ),
      backgroundColor: Colors.deepPurple,
      body: Text('AboutScreen'),
    );
  }
}
