import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

class Mypage2 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Mypage2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 40.0,
              width: 150.0,
              child: Text(
                "Enter Name:",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
            Container(
                height: 40.0,
                width: 125.0,
                child: TextFormField(
                  initialValue: "Player1",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ))
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 40.0,
              width: 150.0,
              child: Text(
                "Age:",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
            Container(
                height: 40.0,
                width: 125.0,
                child: TextFormField(
                  initialValue: "20",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/q');
                },
                child: Text(
                  "Proceed",
                  style:
                      TextStyle(color: const Color(0xFF5780D9), fontSize: 25.0),
                )),
            FlatButton(
                color: Colors.white,
                onPressed: () {
                  SystemNavigator.pop();
                },
                // padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "End Game",
                  style:
                      TextStyle(color: const Color(0xFF5780D9), fontSize: 25.0),
                ))
          ],
        )
      ],
    );
  }
}

class Mypage2p extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 0.0),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
          shape: BoxShape.rectangle,
          //border: Border.all(
          // color: Color(0xFF5780D9),
          // ),
          color: Color(0xFF5780D9),
          //borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF5780D9),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(1.5, 1.5),
                  colors: [
                    const Color(0xFF233C67),
                    const Color(0xFF5780D9),
                  ]),
              border: Border.all(color: const Color(0xFF5780D9), width: 5.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Mypage2(),
          ),
        ),
      ),
    );
  }
}
