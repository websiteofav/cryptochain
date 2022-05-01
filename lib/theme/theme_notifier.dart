import 'package:cryptochain/theme/color_theme/color_dark_theme.dart';
import 'package:cryptochain/theme/color_theme/color_light_theme.dart';
import 'package:cryptochain/theme/color_theme/color_theme.dart';
import 'package:cryptochain/theme/decoration_theme/decoration_dark_theme.dart';
import 'package:cryptochain/theme/decoration_theme/decoration_light_theme.dart';
import 'package:cryptochain/theme/decoration_theme/decoration_theme.dart';
import 'package:cryptochain/theme/text_theme/text_dark_theme.dart';
import 'package:cryptochain/theme/text_theme/text_light_theme.dart';
import 'package:cryptochain/theme/text_theme/text_theme.dart';
import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  late bool isDark;
  late ColorThemeCustom themeColorCustom;
  late TextThemeCustom textThemeCustom;
  late DecorationThemeCustom decorationThemeCustom;

  ThemeNotifier() {
    isDark = true;
    themeColorCustom = DarkThemeColor();
    textThemeCustom = DarkThemeText();
    decorationThemeCustom = DarkThemeDecoration();
  }

  onThemeChange(bool isDark) {
    if (isDark) {
      this.isDark = true;
      themeColorCustom = DarkThemeColor();
      textThemeCustom = DarkThemeText();
      decorationThemeCustom = DarkThemeDecoration();
    } else {
      this.isDark = false;
      themeColorCustom = LightThemeColor();
      textThemeCustom = LightThemeText();
      decorationThemeCustom = LightThemeDecoration();
    }
    notifyListeners();
  }
}
