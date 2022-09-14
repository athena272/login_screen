import 'package:flutter/material.dart';
import 'package:login_screen/palatte.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key, required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16)),
      child: ElevatedButton(
        onPressed: () {},
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
}