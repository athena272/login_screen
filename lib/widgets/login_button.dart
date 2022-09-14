import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_screen/palatte.dart';
import 'package:login_screen/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(16)),
      child: ElevatedButton(
        onPressed: () async {
          var state = await login();

          if (state) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          } else {
            
          }

        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            buttonText,
            style: keyBodyStyle,
          ),
        ),
      ),
    );
  }

  Future<bool> login() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Uri url = Uri.https("jsonplaceholder.typicode.com", "/todos/1");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> datas = json.decode(response.body);
      var refAttribute = datas['userId'];
      keepAttribute(refAttribute.toString());

      return true;
    } else {
      return false;
    }
  }

  void keepAttribute(String refAttribute) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("tokenID", refAttribute);
  }
}
