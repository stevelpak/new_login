import 'package:flutter/material.dart';
import 'package:login_page/utils/constants.dart';

Widget customField(String text) {
  bool parolmi = false;

  if (text == "Password") {
    parolmi = true;
  }
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: kTextStyle(
          size: 15,
          fontWeight: FontWeight.w600,
          color: const Color(0xff666680),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      TextFormField(
        obscureText: parolmi,
        decoration: InputDecoration(
          fillColor: const Color(0xff666680),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffE5E5E5),
            ),
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    ],
  );
}
