import 'package:flutter/material.dart';

import 'package:pj/components/button.dart';
import 'package:pj/components/padding.dart';
import 'package:pj/components/text.dart';


Widget Function(BuildContext) map() {
  return (BuildContext context) {
    void resultnavi() { Navigator.pushNamed(context, '/result'); }

    return Scaffold(
      body: Center(
        child: text(64, 'MAP')
      ),
      bottomNavigationBar: padding(0, 15, button(200, 50, 18, '終了する', resultnavi), 15, 15),
    );
  };
}