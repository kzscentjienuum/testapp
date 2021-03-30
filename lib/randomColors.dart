import 'package:flutter/material.dart';
import 'dart:math';

Color randomColor = getRandomColor();

Color getRandomColor() =>
    Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
