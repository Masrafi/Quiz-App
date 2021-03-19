import 'package:block_part1/learn/bangladesh_learn.dart';
import 'package:block_part1/learn/film_learn.dart';
import 'package:block_part1/learn/general_learn.dart';
import 'package:block_part1/learn/history_learn.dart';
import 'package:block_part1/learn/international_learn.dart';
import 'package:block_part1/learn/news_learn.dart';
import 'package:block_part1/learn/science_learn.dart';
import 'package:block_part1/learn/sports_learn.dart';
import 'package:block_part1/widget/size_helper.dart';
import 'package:flutter/material.dart';

class Learn extends StatefulWidget {
  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
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
                  MaterialPageRoute(builder: (context) => GeneralLearn()));
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FilmLearn()));
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
                  MaterialPageRoute(builder: (context) => SportsLearn()));
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
                  MaterialPageRoute(builder: (context) => HistoryLearn()));
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
                  MaterialPageRoute(builder: (context) => ScienceLearn()));
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewsLearn()));
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
                  MaterialPageRoute(builder: (context) => BangladeshLearn()));
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InternationalLearn()));
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
