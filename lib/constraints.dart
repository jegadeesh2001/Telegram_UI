import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color white = Color(0xffffffff);
Color black = Color(0xff000000);
Color grey = Color(0xff7A887D);
Color blue = Color(0xff529EBA);
Color lightAppbar = Color(0xff0088CC);
Color darkblue1 = Color(0xff173A47);
Color darkAppbar = Color(0xff244E5D);

IconData group = FontAwesomeIcons.userFriends;
IconData person = FontAwesomeIcons.solidUser;
IconData call = FontAwesomeIcons.phone;
IconData nearby = FontAwesomeIcons.streetView;
IconData saved = FontAwesomeIcons.solidBookmark;
IconData addPeople = FontAwesomeIcons.userPlus;
IconData question = FontAwesomeIcons.questionCircle;
IconData pencil = FontAwesomeIcons.pencilAlt;
IconData search = FontAwesomeIcons.search;
IconData settings = FontAwesomeIcons.cog;
IconData list = FontAwesomeIcons.list;
IconData sun = FontAwesomeIcons.sun;
IconData moon = FontAwesomeIcons.moon;

TextStyle heading =
    TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 16);

TextStyle subheading = TextStyle(
  color: Colors.white,
  fontSize: 10,
);

ThemeData themeLight = ThemeData(
    scaffoldBackgroundColor: white,
    appBarTheme: AppBarTheme(backgroundColor: lightAppbar),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: black,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      headline2: TextStyle(fontSize: 14, color: black),
      headline3: TextStyle(fontSize: 14),
      headline4: TextStyle(
        fontSize: 11,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: blue,
    ));

ThemeData themeDark = ThemeData(
  scaffoldBackgroundColor: darkblue1,
  textTheme: TextTheme(
    headline1: TextStyle(
      color: white,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
    headline2: TextStyle(fontSize: 14, color: white),
    headline3: TextStyle(fontSize: 14, color: grey),
    headline4: TextStyle(
      fontSize: 11,
      color: white,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: darkAppbar,
  ),
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: blue),
);
