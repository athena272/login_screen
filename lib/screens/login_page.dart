import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_screen/palatte.dart';
import 'package:login_screen/widgets/email_input.dart';
import 'package:login_screen/widgets/login_button.dart';
import 'package:login_screen/widgets/password_input.dart';
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
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    child: Center(
                      child: Text(
                        "Green Air",
                        style: heading,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            //Email InputField
                            EmailInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hintText: "E-mail",
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                              inputController: _inputXController,
                            ),
                            //Password InputField
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hintText: "Password",
                              inputType: TextInputType.number,
                              inputAction: TextInputAction.done,
                              inputController: _inputYController,
                            ),
                            Text(
                              'Forgot Password?',
                              style: keyBodyStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 75,
                            ),
                            LoginButton(
                              buttonText: 'Login',
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Text("Create a new account",
                                  style: keyBodyStyle),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
