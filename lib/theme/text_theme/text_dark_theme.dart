import 'package:flutter/material.dart';
import 'package:cryptochain/theme/text_theme/text_theme.dart';

class DarkThemeText implements TextThemeCustom {
  @override
  TextStyle titleAppBar1 = const TextStyle(
      color: Color.fromARGB(255, 16, 218, 245),
      fontSize: 20,
      fontWeight: FontWeight.bold);

  @override
  TextStyle titleAppBar2 = const TextStyle(
      color: Color.fromARGB(255, 16, 206, 41),
      fontSize: 20,
      fontWeight: FontWeight.bold);
  @override
  TextStyle titleAppBar3 = const TextStyle(
    color: Color.fromARGB(249, 243, 240, 240),
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
  @override
  TextStyle landingPageTitleText = const TextStyle(
      color: Color.fromARGB(212, 234, 236, 236),
      fontSize: 24,
      fontWeight: FontWeight.w500);

  @override
  TextStyle subtitleText1 = const TextStyle(
      color: Color.fromARGB(255, 214, 223, 223),
      fontSize: 14,
      fontWeight: FontWeight.w400);
  @override
  TextStyle valueText1 = const TextStyle(
      shadows: <Shadow>[
        Shadow(
          offset: Offset(1.0, 1.0),
          blurRadius: 3.0,
          color: Color.fromARGB(255, 243, 71, 71),
        ),
        // Shadow(
        //   offset: Offset(10.0, 10.0),
        //   blurRadius: 8.0,
        //   color: Color.fromARGB(124, 128, 128, 212),
        // ),
      ],
      color: Color.fromARGB(212, 234, 236, 236),
      fontSize: 24,
      fontWeight: FontWeight.w500);

  @override
  TextStyle valueText2 = const TextStyle(
      shadows: <Shadow>[
        Shadow(
          offset: Offset(1.0, 1.0),
          blurRadius: 3.0,
          color: Color.fromARGB(255, 24, 4, 59),
        ),
        // Shadow(
        //   offset: Offset(10.0, 10.0),
        //   blurRadius: 8.0,
        //   color: Color.fromARGB(124, 128, 128, 212),
        // ),
      ],
      color: Color.fromARGB(255, 29, 49, 235),
      fontSize: 16,
      fontWeight: FontWeight.bold);
}
