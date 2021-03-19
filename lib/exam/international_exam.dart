import 'package:audioplayers/audio_cache.dart';
import 'package:block_part1/widget/size_helper.dart';
import 'package:flutter/material.dart';

class InternationalExam extends StatefulWidget {
  @override
  _InternationalExamState createState() => _InternationalExamState();
}

class _InternationalExamState extends State<InternationalExam> {
  var kLabelStyle =
      TextStyle(color: Colors.black, fontFamily: 'OpenSans', fontSize: 20);

  var kLabelStyleans = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: 'OpenSans',
      fontSize: 25);

  bool pressed = false;

  var value1 = new TextEditingController();
  var value2 = new TextEditingController();
  var value3 = new TextEditingController();
  var value4 = new TextEditingController();
  var value5 = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "International",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xffF8A261),
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.only(left: 10, right: 5),
            children: [
              SizedBox(
                height: displayWidth(context) * .04,
              ),
              Text(
                "Students should observe (a) __ laws of health. They should rise (b) ___ the bed early (c) __ the morning and go (d) __ for (e) __ walk.",
                textAlign: TextAlign.justify,
                style: kLabelStyle,
              ),
              SizedBox(
                height: displayWidth(context) * .04,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "a. ",
                    style: kLabelStyleans,
                  ),
                  SizedBox(
                    height: displayWidth(context) * .15,
                    width: displayWidth(context) * .5,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      //textAlign: TextAlign.center,
                      controller: value1,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Field empty';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Type your answer',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          //fontSize: titleSize,
                          fontFamily: 'OpenSans',
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "b. ",
                    style: kLabelStyleans,
                  ),
                  SizedBox(
                    height: displayWidth(context) * .15,
                    width: displayWidth(context) * .5,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      //textAlign: TextAlign.center,
                      controller: value2,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Field empty';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Type your answer',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          //fontSize: titleSize,
                          fontFamily: 'OpenSans',
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "c. ",
                    style: kLabelStyleans,
                  ),
                  SizedBox(
                    height: displayWidth(context) * .15,
                    width: displayWidth(context) * .5,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      //textAlign: TextAlign.center,
                      controller: value3,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Field empty';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Type your answer',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          //fontSize: titleSize,
                          fontFamily: 'OpenSans',
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "d. ",
                    style: kLabelStyleans,
                  ),
                  SizedBox(
                    height: displayWidth(context) * .15,
                    width: displayWidth(context) * .5,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      //textAlign: TextAlign.center,
                      controller: value4,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Field empty';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Type your answer',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          //fontSize: titleSize,
                          fontFamily: 'OpenSans',
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "e. ",
                    style: kLabelStyleans,
                  ),
                  SizedBox(
                    height: displayWidth(context) * .15,
                    width: displayWidth(context) * .5,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      //textAlign: TextAlign.center,
                      controller: value5,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Field empty';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Type your answer',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          //fontSize: titleSize,
                          fontFamily: 'OpenSans',
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Color(0xffA94340),
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: displayWidth(context) * .04,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    final player = AudioCache();
                    player.play('audio.mp3');
                    setState(() {
                      pressed = true;
                      print("Masrafi");
                    });
                  }
                },
              ),
              SizedBox(
                height: displayWidth(context) * .06,
              ),
              pressed
                  ? Text(
                      "a. First, b. Second, c. Third, d. Fourth, e. Fifth",
                      style: kLabelStyle,
                    )
                  : SizedBox(),
            ],
          ),
        ));
  }
}
