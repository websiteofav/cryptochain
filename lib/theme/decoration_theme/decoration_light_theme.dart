import 'package:cryptochain/theme/decoration_theme/decoration_theme.dart';
import 'package:flutter/cupertino.dart';

class LightThemeDecoration implements DecorationThemeCustom {
  @override
  var boxDecoration1 = const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 229, 91, 28),
        Color.fromARGB(255, 156, 20, 25)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.48, 0.98],
      tileMode: TileMode.clamp,
    ),
  );
}
