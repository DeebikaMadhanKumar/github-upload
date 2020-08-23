import 'package:flutter/material.dart';
import 'package:quiz/page1.dart';
import 'package:quiz/page2.dart';
import 'package:quiz/easy.dart';
import 'package:quiz/hard.dart' as har;
import 'package:quiz/intermediate.dart' as inter;

void main() {
  runApp(MaterialApp(
    home: Mypage2p(),
    initialRoute: '/p', // becomes the route named '/'
    routes: <String, WidgetBuilder>{
      '/p': (BuildContext context) => Mypage2p(),
      '/q': (BuildContext context) => Mychoosepage(),
      '/a': (BuildContext context) => Qn1easy(),
      '/b': (BuildContext context) => Qn2easy(),
      '/c': (BuildContext context) => Qn3easy(),
      '/d': (BuildContext context) => Qn4easy(),
      '/e': (BuildContext context) => Qn5easy(),
      '/f': (BuildContext context) => Qn6easy(),
      '/g': (BuildContext context) => Qn7easy(),
      '/h': (BuildContext context) => Qn8easy(),
      '/i': (BuildContext context) => Qn9easy(),
      '/j': (BuildContext context) => Qn10easy(),
      '/k': (BuildContext context) => Qnendeasy(),
      '/a1': (BuildContext context) => inter.Qn1inter(),
      '/b1': (BuildContext context) => inter.Qn2(),
      '/c1': (BuildContext context) => inter.Qn3(),
      '/d1': (BuildContext context) => inter.Qn4(),
      '/e1': (BuildContext context) => inter.Qn5(),
      '/f1': (BuildContext context) => inter.Qn6(),
      '/g1': (BuildContext context) => inter.Qn7(),
      '/h1': (BuildContext context) => inter.Qn8(),
      '/i1': (BuildContext context) => inter.Qn9(),
      '/j1': (BuildContext context) => inter.Qn10(),
      '/k1': (BuildContext context) => inter.Qnend(),
      '/a2': (BuildContext context) => har.Qn1hard(),
      '/b2': (BuildContext context) => har.Qn2(),
      '/c2': (BuildContext context) => har.Qn3(),
      '/d2': (BuildContext context) => har.Qn4(),
      '/e2': (BuildContext context) => har.Qn5(),
      '/f2': (BuildContext context) => har.Qn6(),
      '/g2': (BuildContext context) => har.Qn7(),
      '/h2': (BuildContext context) => har.Qn8(),
      '/i2': (BuildContext context) => har.Qn9(),
      '/j2': (BuildContext context) => har.Qn10(),
      '/k2': (BuildContext context) => har.Qnend(),
    },
  ));
}
