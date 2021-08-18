import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/home/home.dart';
import 'package:previsao_do_tempo/style.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: grayTheme,
        textTheme: TextTheme(),
      ),
      themeMode: ThemeMode.dark,
    ),
  );
}
