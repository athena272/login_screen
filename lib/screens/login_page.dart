import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_app/palatte.dart';
import '../widgets/background_image.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _inputXController = TextEditingController();
  final _inputYController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            key: _formKey,
            children: [
              Container(
                height: 150,
                child: Center(
                  child: Text(
                    "Green Air",
                    style: Heading,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[600]?.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 20),
                            border: InputBorder.none,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                FontAwesomeIcons.solidEnvelope,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            hintText: "E-mail",
                            hintStyle: keyBoardStyle,
                          ),
                          style: keyBoardStyle,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          controller: _inputXController,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[600]?.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 20),
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(
                              FontAwesomeIcons.solidEnvelope,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          hintText: "Password",
                          hintStyle: keyBoardStyle,
                        ),
                        style: keyBoardStyle,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        controller: _inputYController,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
