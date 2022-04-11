import 'package:flutter/material.dart';

class Theme {
  const Theme();

  static const Color mTestColor = Color(0xFF0FA76C);

  static const Color mBackgroundColor = Color(0xFFFAFAFA);
  static const Color mPrimaryColor = Color(0xFF1ABC9C);
  static const Color mFillColor = Color(0xFFFFFFFF);

  static const Color mGreyColor = Color(0xFFB1B1B1);

  static const Color mPrimaryFontColor = Color(0xFF171717);
  static const Color mSecondFontColor = Color(0xFFBBBBBB);

  // BottomNavigationBar Style

  static const Color mBottomNavigationBarBoxColor = Color(0xFFBBBBBB);
  static const Color mBottomNavigationBarSelectedIconColor = Color(0xFF1ABC9C);
  static const Color mBottomNavigationBarNonSelectedIconColor = Color(0xFFB1B1B1);

  static BoxShadow mBottomNavigationBarBoxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.3),
    spreadRadius: 2,
    blurRadius: 15,
    offset: const Offset(0, 5),
  );

  // End BottomNavigationBar Style
}