import 'package:audioplayers/audio_cache.dart';
import 'package:block_part1/dashbord.dart';
import 'package:block_part1/widget/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class LoginJco extends StatefulWidget {
  @override
  _LoginJcoState createState() => _LoginJcoState();
}

class _LoginJcoState extends State<LoginJco> {
  var _namer = new TextEditingController();
  var _pass = new TextEditingController();
  final String nameJco = 'jco@gmail.com';
  final String passwordJco = 'jco123456';
  final String nameOfficer = 'officer@gmail.com';
  final String passwordOfficer = 'officer123456';
  final String nameOthers = 'other@gmail.com';
  final String passwordOthers = 'other123456';

  Future checkLogin() async {
    if (nameJco == _namer.text && passwordJco == _pass.text) {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString('email', _namer.text);
      Toast.show("Login Successful", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      setState(() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => DashBord()));
      });
    } else if (nameOfficer == _namer.text && passwordOfficer == _pass.text) {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString('email', _namer.text);
      Toast.show("Login Successful", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      setState(() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => DashBord()));
      });
    } else if (nameOthers == _namer.text && passwordOthers == _pass.text) {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString('email', _namer.text);
      Toast.show("Login Successful", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      setState(() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => DashBord()));
      });
    } else {
      Toast.show("Login Fail", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
    }
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(
            left: displayWidth(context) * 0.1,
            right: displayWidth(context) * 0.1),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/img.jpg"),
              Text(
                "LOGIN",
                style: TextStyle(fontSize: displayWidth(context) * .1),
              ),
              SizedBox(
                height: displayWidth(context) * .04,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xffFEE3D8),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: _namer,
                  style: TextStyle(color: Colors.black87),
                  validator: (val) => val.isEmpty || !val.contains("@")
                      ? "Enter a valid eamil"
                      : null,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(top: 14, left: 20, right: 20),
                      suffixIcon: Icon(Icons.mail, color: Colors.black38),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
              SizedBox(
                height: displayWidth(context) * .08,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xffFEE3D8),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextFormField(
                  controller: _pass,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black87),
                  validator: (val) {
                    if (val.isEmpty) {
                      return 'Password is empty';
                    } else {}
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(top: 14, left: 20, right: 20),
                      suffixIcon: Icon(
                        Icons.text_fields,
                        color: Colors.black38,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
              SizedBox(
                height: displayWidth(context) * .08,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: displayWidth(context) * .15,
                    right: displayWidth(context) * .15),
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      checkLogin();
                    }
                  },
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  color: Color(0xffFA5100),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Color(0xFF527DAA),
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
