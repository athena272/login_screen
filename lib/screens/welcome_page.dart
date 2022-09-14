import 'package:flutter/material.dart';
import 'package:login_screen/palatte.dart';
import 'package:login_screen/screens/home_page.dart';
import 'package:login_screen/screens/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    //First checkSession
    checkSession().then((value) {
      if (value) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Welcome to Green Air", textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Future<bool> checkSession() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 3));

    String? localToken = sharedPreferences.getString("tokenID");

    localToken = sharedPreferences.getString("tokenID");

    if (localToken == null) {
      return true;
    } else {
      return false;
    }
  }
}
