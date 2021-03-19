import 'package:audioplayers/audio_cache.dart';
import 'package:block_part1/widget/size_helper.dart';
import 'package:flutter/material.dart';

class NewsExam extends StatefulWidget {
  @override
  _NewsExamState createState() => _NewsExamState();
}

class _NewsExamState extends State<NewsExam> {
  var kLabelStyle =
      TextStyle(color: Colors.black, fontFamily: 'OpenSans', fontSize: 20);

  var kLabelStyleans = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: 'OpenSans',
      fontSize: 20);

  bool pressed = false;

  bool icon = false;

  bool icon1 = false;

  bool icon2 = false;

  bool right = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "News",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xffF8A261),
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 10, right: 5),
          children: [
            Text(
              "1. What is the national flower in Bangladesh?",
              style: kLabelStyle,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: displayWidth(context) * .04,
                  ),
                  Row(
                    children: [
                      ButtonTheme(
                        minWidth: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          color: Color(0xff3E699D),
                          onPressed: () {
                            setState(() {
                              right = true;

                              pressed = true;
                              final player = AudioCache();
                              player.play('audio.mp3');
                            });
                          },
                          child: Text(
                            "D. Marigold",
                            style: kLabelStyleans,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: displayWidth(context) * .04,
                      ),
                      right
                          ? Image.asset(
                              "assets/right.png",
                              height: 50,
                              width: 50,
                            )
                          : SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: displayWidth(context) * .04,
                  ),
                  Row(
                    children: [
                      ButtonTheme(
                        minWidth: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          color: Color(0xff3E699D),
                          onPressed: () {
                            setState(() {
                              icon2 = true;
                              pressed = true;
                              right = true;
                              final player = AudioCache();
                              player.play('audio.mp3');
                            });
                          },
                          child: Text(
                            "D. Marigold",
                            style: kLabelStyleans,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: displayWidth(context) * .04,
                      ),
                      icon2
                          ? Image.asset(
                              "assets/cross.png",
                              height: 50,
                              width: 50,
                            )
                          : SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: displayWidth(context) * .04,
                  ),
                  Row(
                    children: [
                      ButtonTheme(
                        minWidth: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          color: Color(0xff3E699D),
                          onPressed: () {
                            setState(() {
                              icon1 = true;
                              pressed = true;
                              right = true;
                              final player = AudioCache();
                              player.play('audio.mp3');
                            });
                          },
                          child: Text(
                            "D. Marigold",
                            style: kLabelStyleans,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: displayWidth(context) * .04,
                      ),
                      icon1
                          ? Image.asset(
                              "assets/cross.png",
                              height: 50,
                              width: 50,
                            )
                          : SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: displayWidth(context) * .04,
                  ),
                  Row(
                    children: [
                      ButtonTheme(
                        minWidth: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          color: Color(0xff3E699D),
                          onPressed: () {
                            setState(() {
                              icon = true;
                              pressed = true;
                              right = true;
                              final player = AudioCache();
                              player.play('audio.mp3');
                            });
                          },
                          child: Text(
                            "D. Marigold",
                            style: kLabelStyleans,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: displayWidth(context) * .04,
                      ),
                      icon
                          ? Image.asset(
                              "assets/cross.png",
                              height: 50,
                              width: 50,
                            )
                          : SizedBox(),
                    ],
                  ),
                  pressed
                      ? Text(
                          "The reference will be here. After click on Button ",
                          style: kLabelStyle,
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ],
        ));
  }
}
