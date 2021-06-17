import 'package:flutter/material.dart';
import 'dart:math';

Color randomColor = getRandomColor();
Color fontColor = getFontColor();

Color getRandomColor() =>
    Color((Random().nextInt(999999) * 0xFFFFFF)).withOpacity(1.0);
//random color geretaion using Random class

Color getFontColor() {
  if ((randomColor.alpha * 0.299 +
          randomColor.green * 0.587 +
          randomColor.blue * 0.114) >
      186)
    return Colors.black;
  else
    return Colors.white;
}
