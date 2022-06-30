import 'package:flutter/material.dart';
import 'package:login_page/utils/constants.dart';
import 'package:login_page/sign_up.dart';

Widget socialButton(String name, BuildContext context) {
  Color textSocColor = Colors.white;
  Color shadowColor = const Color.fromRGBO(0, 0, 0, 0.25);
  LinearGradient currentGradient = const LinearGradient(
    colors: [
      Color(0xFF1C1C23),
      Color(0xFF1C1C23),
    ],
  );

  if (name == "Google") {
    textSocColor = Colors.black;
    currentGradient = googleGrad;
    shadowColor = const Color.fromRGBO(255, 255, 255, 0.25);
  } else if (name == "Facebook") {
    currentGradient = facebookGrad;
    shadowColor = const Color.fromRGBO(23, 133, 230, 0.5);
  }

  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    decoration: BoxDecoration(
      gradient: gradient,
      borderRadius: BorderRadius.circular(999),
      boxShadow: [
        BoxShadow(
          color: shadowColor,
          spreadRadius: 5,
          blurRadius: 10,
          offset: const Offset(0, 3),
        )
      ],
    ),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        gradient: currentGradient,
        borderRadius: BorderRadius.circular(999),
      ),
      margin: const EdgeInsets.all(3),
      child: InkWell(
        onTap: () {
          if (name == "E-mail") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUp()),
            );
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            email(name),
            Text(
              "Sign up with $name",
              style: TextStyle(
                color: textSocColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget email(String value) {
  // if (value != "E-mail" || value != "Sign Up" || value != "Sign In") {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 10),
  //     child: Image.asset(
  //       "assets/$value.png",
  //       height: 20,
  //       width: 20,
  //     ),
  //   );
  // }
  return const Padding(padding: EdgeInsets.all(1));
}
