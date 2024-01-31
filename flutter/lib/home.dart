import 'package:flutter/material.dart';

import 'package:pj/components/button.dart';
import 'package:pj/components/padding.dart';
import 'package:pj/components/text.dart';


Widget Function(BuildContext) home() {
  return (BuildContext context) {
    void mapnavi() { Navigator.pushNamed(context, '/map'); }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: text(32, 'TEST'),
      ),
      body: Center(
        child: padding(30, 0, Column(children: [
          padding(15, 15, button(300, 75, 24, 'MAPを見る', mapnavi)),
        ]))
      ),
    );
  };
}