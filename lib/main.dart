import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:flutter_simple_app/src/config/ApplicationConfig.dart';
import 'package:flutter_simple_app/src/screen/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    _configureLogger();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: SplashScreen(),
    );
  }

  _configureLogger() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord rec) {
      if (ApplicationConfig.isDebug) {
        print(
            '[${rec.level.name}][${rec.time}][${rec.loggerName}]: ${rec.message}');
      }
    });
  }
}
