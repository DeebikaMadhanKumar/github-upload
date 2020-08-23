import 'package:flutter/material.dart';

class Mychoosepage extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Mychoosepage> {
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
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(1.5, 1.5),
                  colors: [
                    const Color(0xFF233C67),
                    const Color(0xFF5780D9),
                  ]),
              border: Border.all(color: Colors.lightBlue, width: 5.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                    color: const Color(0xFF233C67),
                    onPressed: () {
                      Navigator.pushNamed(context, '/a');
                    },
                    child: Text(
                      "          EASY          ",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    )),
                FlatButton(
                    color: const Color(0xFF233C67),
                    onPressed: () {
                      Navigator.pushNamed(context, '/a1');
                    },
                    child: Text(
                      " INTERMEDIATE ",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    )),
                FlatButton(
                    color: const Color(0xFF233C67),
                    onPressed: () {
                      Navigator.pushNamed(context, '/a2');
                    },
                    child: Text(
                      "          HARD          ",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
