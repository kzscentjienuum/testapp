import 'package:flutter/material.dart';
import 'randomColors.dart';

void main() => runApp(ColorChangerApp());

class ColorChangerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Center(child: BackgroundWidget())));
  }
}

class BackgroundWidget extends StatefulWidget {
  @override
  BackgroundWidgetState createState() => BackgroundWidgetState();
}

class BackgroundWidgetState extends State<BackgroundWidget> {
  Color color;

  @override
  void initState() {
    super.initState();

    color = randomColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              color: randomColor,
            ),
            child: new Stack(
              children: [
                Center(
                  child: Text(
                    'Hey there',
                    style: TextStyle(
                        fontFamily: 'Fascinate',
                        fontSize: 100,
                        color: Colors.white),
                  ),
                ),
                GestureDetector(onTap: () {
                  setState(
                    () {
                      randomColor = getRandomColor();
                    },
                  );
                })
              ],
            )));
  }
}
