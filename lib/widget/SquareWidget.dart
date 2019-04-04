import 'package:flutter/material.dart';
import 'package:flutter_simple_app/widget/BackgroundImageClipper.dart';

class SquareWidget extends StatelessWidget {

  final String title;
  final Color color;
  final VoidCallback action;
  final Gradient gradient;
  final ImageProvider backgroundImage;

  final textStyle = TextStyle(
      color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18.0);

  SquareWidget(
      this.title, this.action, this.color, this.gradient, this.backgroundImage);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: action,
      child: Container(
        margin: const EdgeInsets.all(2.0),
        width: 80.0,
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                  offset: Offset(0.0, 1.0)),
            ],
            gradient: gradient),
        child: Stack(
          children: <Widget>[
            Opacity(
              opacity: 0.2,
              child: Align(
                alignment: Alignment.centerRight,
                child: Transform.rotate(
                  angle: -3.14 / 4.8,
                  alignment: Alignment.centerRight,
                  child: ClipPath(
                    clipper: BackgroundImageClipper(),
                    child: Container(
                      padding: const EdgeInsets.only(
                          bottom: 20.0, right: 10.0, left: 60.0),
                      child: Image(
                        width: 90.0,
                        height: 90.0,
                        image: backgroundImage ,
                      ),
                    ),
                  ),
                ),
              ),
            ), // END BACKGROUND IMAGE

            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: Text(title, style: textStyle),
            ),
          ],
        ),
      ),
    );
  }
}
