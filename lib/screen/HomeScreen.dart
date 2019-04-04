import 'package:flutter/material.dart';
import 'package:flutter_simple_app/widget/MenuDrawerWidget.dart';
import 'package:flutter_simple_app/config/ApplicationConfig.dart';
import 'package:flutter_simple_app/widget/SquareWidget.dart';

class HomeScreen extends StatelessWidget {

  final blueGradient = const LinearGradient(colors: const <Color>[
    const Color(0xFF882DEB),
    const Color(0xFF9A4DFF),
  ], stops: const <double>[
    0.4,
    0.8
  ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(ApplicationConfig.appName),
        centerTitle: true,
      ),
      drawer: MenuDrawerWidget(),
      body: Container(
        child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(4.0),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              SquareWidget("For\nFuture\nPlan", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }, Colors.blue, blueGradient,
                  AssetImage("asset/image/battery.png")),
            ]),
      ),
    );
  }
}
