import 'package:block_part1/widget/size_helper.dart';
import 'package:flutter/material.dart';

class NewsLearn extends StatelessWidget {
  var kLabelStyle =
      TextStyle(color: Colors.black, fontFamily: 'OpenSans', fontSize: 18);
  var kLabelStyleans = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: 'OpenSans',
      fontSize: 16);

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
              "1. What is the national flower of Bangladesh?",
              style: kLabelStyle,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ans: Water Line",
                    style: kLabelStyleans,
                  ),
                  Text(
                    "Ref: para001",
                    style: kLabelStyleans,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: displayWidth(context) * .04,
            ),
            Text(
              "2. What is the national flower of Bangladesh?",
              style: kLabelStyle,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ans: Water Line",
                    style: kLabelStyleans,
                  ),
                  Text(
                    "Ref: para001",
                    style: kLabelStyleans,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: displayWidth(context) * .04,
            ),
            Text(
              "3. What is the national flower of Bangladesh?",
              style: kLabelStyle,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ans: Water Line",
                    style: kLabelStyleans,
                  ),
                  Text(
                    "Ref: para001",
                    style: kLabelStyleans,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: displayWidth(context) * .04,
            ),
          ],
        ));
  }
}
