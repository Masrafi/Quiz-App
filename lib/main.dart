import 'package:block_part1/jco/login_jco.dart';
import 'package:block_part1/widget/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashbord.dart';

// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginJco(),
//     ));

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var email = preferences.getString('email');
  runApp(MaterialApp(
    home: email == null ? LoginJco() : DashBord(),
  ));
}
