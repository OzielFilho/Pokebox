import 'package:flutter/material.dart';

final appTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Colors.white,
      fontSize: 25.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),
    headline2: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xFFFFE600),
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
    headline3: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Colors.black,
      fontSize:15.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
    ),
    
    subtitle2: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xFFF0F0F5),
      fontSize: 15.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),
    button: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Colors.black,
      fontSize: 13.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),
    caption: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xFFF0F0F5),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
  ),
  
  primaryColor: Color(0xFFFFE600),
  accentColor: Color(0xFF1E74BA),
  scaffoldBackgroundColor: Color(0xFF2E2E1E),
  backgroundColor:Color(0xFF2E2E1E),
  accentColorBrightness: Brightness.dark,
  appBarTheme: AppBarTheme(
  
    color: Color(0xFF080807),
    shadowColor: Colors.white,
    elevation: 0.0,
    brightness: Brightness.dark,
  ),
  
  tabBarTheme: TabBarTheme(
    labelColor: Color(0xFFF0F0F5),
    unselectedLabelColor: Color(0xFFe0e0e0),
    unselectedLabelStyle: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xFFF0F0F5),
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    ),
    labelStyle: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Color(0xFFF0F0F5),
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    ),
  ),
);