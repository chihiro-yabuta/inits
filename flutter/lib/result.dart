import 'package:flutter/material.dart';

import 'package:pj/components/button.dart';
import 'package:pj/components/padding.dart';
import 'package:pj/components/text.dart';


Widget Function(BuildContext) result() {
  return (BuildContext context) {
    void homenavi() { Navigator.pushNamed(context, '/'); }

    return Scaffold(
      body: Center(
        child: text(64, 'RESULT')
      ),
      bottomNavigationBar: padding(0, 15, button(200, 50, 18, 'HOMEに戻る', homenavi), 15, 15),
    );
  };
}