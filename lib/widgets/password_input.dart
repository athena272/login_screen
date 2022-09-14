import 'package:flutter/material.dart';
import 'package:login_screen/palatte.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required TextEditingController inputController,
    required this.icon,
    required this.hintText,
    required this.inputType,
    required this.inputAction,
  })  : _inputYController = inputController,
        super(key: key);

  final IconData icon;
  final String hintText;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final TextEditingController _inputYController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            hintText: hintText,
            hintStyle: keyBodyStyle,
          ),
          style: keyBodyStyle,
          obscureText: true,
          keyboardType: inputType,
          textInputAction: inputAction,
          controller: _inputYController,
        ),
      ),
    );
  }
}