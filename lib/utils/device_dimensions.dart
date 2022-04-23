import 'package:flutter/material.dart';

List deviceDimensions(context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  double statusBarHeight = MediaQuery.of(context).viewPadding.top;

  return [height, width, statusBarHeight];
}
