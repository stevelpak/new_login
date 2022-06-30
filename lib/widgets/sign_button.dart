import 'package:login_page/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:login_page/sign_in.dart';
import 'package:login_page/social.dart';

Widget signButton(String name, BuildContext context) {
  Color textSocColor = Colors.white;

  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    decoration: BoxDecoration(
      gradient: gradient,
      borderRadius: BorderRadius.circular(999),
    ),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF323239),
        borderRadius: BorderRadius.circular(999),
      ),
      margin: const EdgeInsets.all(3),
      child: InkWell(
        onTap: () {
          if (name == "Sign In") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignIn()),
            );
          } else if (name == "Sign Up") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Social()),
            );
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
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
