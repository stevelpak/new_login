import 'package:flutter/material.dart';
import 'package:login_page/utils/constants.dart';
import 'package:login_page/widgets/social_button.dart';

class Social extends StatefulWidget {
  const Social({Key? key}) : super(key: key);

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
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
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
          ),
          socialButton("Apple", context),
          socialButton("Google", context),
          socialButton("Facebook", context),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "or",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          socialButton("E-mail", context),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            child: Text(
              "By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF666680),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
