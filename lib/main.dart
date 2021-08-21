import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:previsao_do_tempo/home/home.dart';
import 'package:previsao_do_tempo/style.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: grayTheme,
        textTheme: TextTheme(
          headline1: GoogleFonts.dosis(
            color: Colors.white,
            fontSize: 140,
            fontWeight: FontWeight.bold,
          ),
          headline6: GoogleFonts.dosis(
            color: Colors.white,
            fontSize: 20,
          ),
          subtitle1: GoogleFonts.dosis(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          subtitle2: GoogleFonts.dosis(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
          bodyText1: GoogleFonts.dosis(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: GoogleFonts.dosis(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          caption: GoogleFonts.dosis(
            color: Colors.white,
            fontSize: 8,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
    ),
  );
}
