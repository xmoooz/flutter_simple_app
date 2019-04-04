import 'package:flutter/material.dart';
import 'package:flutter_simple_app/src/widget/MenuDrawerWidget.dart';
import 'package:flutter_simple_app/src/config/ApplicationConfig.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(ApplicationConfig.appName),
        centerTitle: true,
      ),
      drawer: MenuDrawerWidget(),
    );
  }
}
