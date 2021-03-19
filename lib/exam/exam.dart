import 'package:block_part1/exam/bangladesh_exam.dart';
import 'package:block_part1/exam/film_exam.dart';
import 'package:block_part1/exam/general_exam.dart';
import 'package:block_part1/exam/history_exam.dart';
import 'package:block_part1/exam/international_exam.dart';
import 'package:block_part1/exam/news_exam.dart';
import 'package:block_part1/exam/science_exam.dart';
import 'package:block_part1/exam/sports_exam.dart';
import 'package:block_part1/widget/size_helper.dart';
import 'package:flutter/material.dart';

class Exam extends StatefulWidget {
  @override
  _ExamState createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  var kLabelStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: 'OpenSans',
      fontSize: 20);
  var kLabelStyleNum = TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      fontFamily: 'OpenSans',
      fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Category",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffF8A261),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(
            height: displayWidth(context) * .04,
          ),
          InkWell(
            child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xff50AEC7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "General Knowledge",
                        style: kLabelStyle,
                      ),
                      Text(
                        "25",
                        style: kLabelStyleNum,
                      )
                    ],
                  ),
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GeneralExam()));
            },
          ),
          SizedBox(
            height: displayWidth(context) * .04,
          ),
          InkWell(
            child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xff50AEC7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Film",
                        style: kLabelStyle,
                      ),
                      Text(
                        "38",
                        style: kLabelStyleNum,
                      )
                    ],
                  ),
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FilmExam()));
            },
          ),
          SizedBox(
            height: displayWidth(context) * .04,
          ),
          InkWell(
            child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xff50AEC7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sports",
                        style: kLabelStyle,
                      ),
                      Text(
                        "25",
                        style: kLabelStyleNum,
                      )
                    ],
                  ),
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SportsExam()));
            },
          ),
          SizedBox(
            height: displayWidth(context) * .04,
          ),
          InkWell(
            child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xff50AEC7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "History",
                        style: kLabelStyle,
                      ),
                      Text(
                        "25",
                        style: kLabelStyleNum,
                      )
                    ],
                  ),
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HistoryExam()));
            },
          ),
          SizedBox(
            height: displayWidth(context) * .04,
          ),
          InkWell(
            child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xff50AEC7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Science",
                        style: kLabelStyle,
                      ),
                      Text(
                        "25",
                        style: kLabelStyleNum,
                      )
                    ],
                  ),
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScienceExam()));
            },
          ),
          SizedBox(
            height: displayWidth(context) * .04,
          ),
          InkWell(
            child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xff50AEC7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "News",
                        style: kLabelStyle,
                      ),
                      Text(
                        "25",
                        style: kLabelStyleNum,
                      )
                    ],
                  ),
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NewsExam()));
            },
          ),
          SizedBox(
            height: displayWidth(context) * .04,
          ),
          InkWell(
            child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xff50AEC7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bangladesh",
                        style: kLabelStyle,
                      ),
                      Text(
                        "25",
                        style: kLabelStyleNum,
                      )
                    ],
                  ),
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BangladeshExam()));
            },
          ),
          SizedBox(
            height: displayWidth(context) * .04,
          ),
          InkWell(
            child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xff50AEC7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "International",
                        style: kLabelStyle,
                      ),
                      Text(
                        "25",
                        style: kLabelStyleNum,
                      )
                    ],
                  ),
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InternationalExam()));
            },
          ),
          SizedBox(
            height: displayWidth(context) * .2,
          ),
        ],
      ),
    );
  }
}
