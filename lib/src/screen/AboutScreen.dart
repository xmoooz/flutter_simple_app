import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
        backgroundColor: Colors.amber,
      ),
      body:Center(
        child: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: [
              Center(child:

              SizedBox(
                child: ColorizeAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    text: [
                      "Just for",
                      "Fun",
                      "Happy Fluttering",
                    ],
                    textStyle: TextStyle(
                      fontSize: 64.0,
                      fontFamily: "Horizon",

                    ),
                    colors: [
                      Colors.purple,
                      Colors.blue,
                      Colors.yellow,
                      Colors.red,
                    ],
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
              ),

              )
            ]
        ),
      )


    );
  }
}
