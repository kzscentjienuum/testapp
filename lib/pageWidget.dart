import 'package:flutter/material.dart';
import 'colorDefinition.dart';

//widget class
class PageWidget extends StatefulWidget {
  @override
  PageWidgetState createState() => PageWidgetState();
}

//the widget class has a createState() method that returns the State. The State class has a build() method that builds the widget.
//state class
class PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              color: randomColor,
              //setting background color as randomColor
            ),
            child: new Stack(
              children: [
                Center(
                  child: Text(
                    'Hey there',
                    style: TextStyle(
                        fontFamily: 'Fascinate',
                        fontSize: 100,
                        color: fontColor),
                    //additional feature: styling the text with custom font
                  ),
                ),
                GestureDetector(onTap: () {
                  setState(
                    () {
                      randomColor = getRandomColor();
                      fontColor = getFontColor();
                      //reinitializaion for randomColor to change background
                    },
                  );
                })
              ],
            )));
  }
}
