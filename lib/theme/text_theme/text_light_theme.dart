import 'package:flutter/material.dart';
import 'package:cryptochain/theme/text_theme/text_theme.dart';

class LightThemeText implements TextThemeCustom {
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
      color: Color.fromARGB(214, 14, 1, 1),
      fontSize: 15,
      fontWeight: FontWeight.w500);

  @override
  TextStyle landingPageTitleText = const TextStyle(
      color: Color.fromARGB(211, 3, 17, 17),
      fontSize: 24,
      fontWeight: FontWeight.w500);

  @override
  TextStyle subtitleText1 = const TextStyle(
      color: Color.fromARGB(210, 72, 94, 94),
      fontSize: 14,
      fontWeight: FontWeight.w200);

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
      color: Color.fromARGB(211, 4, 10, 10),
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
      color: Color.fromARGB(211, 4, 10, 10),
      fontSize: 24,
      fontWeight: FontWeight.bold);
}
