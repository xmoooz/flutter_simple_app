import 'package:flutter/material.dart';
import 'package:flutter_simple_app/src/widget/MenuDrawerWidget.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  HomeScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(title),
        centerTitle: true,
      ),
      drawer: MenuDrawerWidget(),
    );
  }
}
