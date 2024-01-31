import 'package:flutter/material.dart';

import 'package:pj/components/text.dart';

SizedBox button(double width, double height, double fontSize, String content, void Function() onPressed, [bool isBlack = true]) {
  return SizedBox(
    width: width,
    height: height,
    child: OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(isBlack ? Colors.black : Colors.white),
      ),
      child: text(fontSize, content, !isBlack)
    )
  );
}