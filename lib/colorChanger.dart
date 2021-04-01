import 'package:flutter/material.dart';
import 'pageWidget.dart';

class ColorChangerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Center(child: PageWidget())));
  }
}
