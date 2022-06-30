import 'package:flutter/material.dart';
import 'package:login_page/utils/constants.dart';
import 'package:login_page/widgets/sign_button.dart';
import 'package:login_page/widgets/customfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            child: customField('Login'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: customField('Password'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: const Color(0xff666680),
                      fillColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(
                          () {
                            isChecked = value!;
                          },
                        );
                      },
                    ),
                    Text(
                      "Remember me",
                      style: kTextStyle(
                        size: 17,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff666680),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Forgot password",
                  style: kTextStyle(
                    size: 17,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff666680),
                  ),
                ),
              ],
            ),
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
              "Sign In",
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
              "If you don't have an account yet?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF666680),
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: signButton("Sign Up", context),
          )
        ],
      ),
    );
  }
}
