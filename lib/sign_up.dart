import 'package:flutter/material.dart';
import 'package:login_page/utils/constants.dart';
import 'package:login_page/widgets/customfield.dart';
import 'package:login_page/widgets/sign_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Image.asset(
              "assets/logo.png",
              height: 24,
              width: 146,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: customField('E-mail address'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: customField('Password'),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffFF7966),
              borderRadius: BorderRadius.circular(49),
              gradient: const RadialGradient(colors: [
                Color.fromRGBO(255, 255, 255, 0.4325),
                Color.fromRGBO(255, 127, 55, 0.5),
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(255, 121, 102, 0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Text(
              "Get Started, it's free",
              style: kTextStyle(
                  size: 20, color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Do you have already an account?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF666680),
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: signButton("Sign In", context),
          )
        ],
      ),
    );
  }
}
