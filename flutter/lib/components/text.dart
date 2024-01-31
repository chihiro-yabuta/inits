import 'package:flutter/material.dart';

Text text(double size, String content, [bool isBlack = true]) {
  return Text(
    content,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: isBlack ? Colors.black : Colors.white,
      fontSize: size,
      fontWeight: FontWeight.bold
    )
  );
}