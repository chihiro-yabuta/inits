import 'package:flutter/material.dart';

Padding padding(double top, double btm, Widget child, [double left = 0, double right = 0]) {
  return Padding(
    padding: EdgeInsets.only(
      left: left,
      top: top,
      right: right,
      bottom: btm,
    ),
    child: child
  );
}