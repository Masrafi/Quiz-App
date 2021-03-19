import 'package:block_part1/exam/exam.dart';
import 'package:block_part1/jco/login_jco.dart';
import 'package:block_part1/learn/learn.dart';
import 'package:block_part1/widget/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class DashBord extends StatefulWidget {
  @override
  _DashBordState createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
  Future logOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('email');
    Toast.show("LogOut Successfully", context,
        duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginJco()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/img2.png",
                height: displayWidth(context) * 0.50,
              ),
            ),
            SizedBox(
              height: displayWidth(context) * .1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ignore: deprecated_member_use
                RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  color: Color(0xff3E699D),
                  child: Text(
                    "Learn",
                    style: TextStyle(
                        fontSize: displayWidth(context) * .04,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Learn()));
                  },
                ),

                RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  color: Color(0xffA94340),
                  child: Text(
                    "Exam",
                    style: TextStyle(
                        fontSize: displayWidth(context) * .04,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Exam()));
                  },
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Text("LogOut"),
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            logOut();
          });
        },
      ),
    );
  }
}
