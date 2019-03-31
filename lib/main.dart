import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:flutter_simple_app/src/config/ApplicationConfig.dart';
import 'package:flutter_simple_app/src/screen/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    _configureLogger();
  }

  final appTitle = 'simple';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: HomeScreen(title: appTitle),
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
