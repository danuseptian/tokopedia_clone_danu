import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

ThemeData defaultTheme = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme(),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: primaryColor,
    titleTextStyle: TextStyle(
      color: Colors.white,
    ),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: Colors.white,
    unselectedLabelColor: Colors.grey[200],
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: primaryColor,
  ),
  cardTheme: CardTheme(
    elevation: 0.8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(defaultRadiusCircular),
    ),
  ),
);
