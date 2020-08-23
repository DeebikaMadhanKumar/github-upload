import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
