import 'package:flutter/material.dart';

// для отображение границы контейнеров в проекте
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'pages/home_page.dart';

void main() {
  debugPaintSizeEnabled = false; // отображение границы контейнеров в проекте

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // убирает иконку дебага на экране
      title: 'Test Quiz',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, //тема для всего приложения
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
        fontFamily: 'Arial',
      ),
      home: HomePage(),
    );
  }
}
