import 'dart:async';

import 'package:flutter/material.dart';

class Qn1inter extends StatefulWidget {
  @override
  _Qn1State createState() => _Qn1State();
}

double val = 0;

class _Qn1State extends State<Qn1inter> {
  Timer _timer1;
  int _start1 = 20;
  _Qn1State() {
    if (setted == false) {
      startTimer();
      print("timer1started");
    }
  }
  void dispose() {
    _timer1.cancel();
    super.dispose();
    print("disposed 1");
  }

  bool setted = false;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer1 = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start1 = _start1 - 1;
              if (_start1 < 1 || setted == true) {
                timer.cancel();
                setted = true;
                print("time up1!!");

                Navigator.pushNamedAndRemoveUntil(
                    context, '/b1', ModalRoute.withName('/a1'));
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Container(),
          backgroundColor: const Color(0xFF233C67),
          title: Text("Question 1"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: () {},
                child: Text(
                  "Timer\t\t$_start1:00",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Qn1.\tHow many continents are there in the world?",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "____________________________________________________",
                      style: TextStyle(color: Colors.white),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                              print("opt1 ");
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              //"A)\t\t\t\t\tS, O, N \t\t\t\t\t\t\t",
                              "A)\t\t\t\t\t\t3\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;

                              setState(() {
                                setted = true;
                              });
                              print("opt2");
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "B)\t\t\t\t\t\t5\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 1;

                              setState(() {
                                setted = true;
                              });
                              print("opt3");
                            },
                            color: const Color(0xFF233C67),
                            child: Text("C)\t\t\t\t\t\t7\t\t\t\t\t\t\t\t",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0))),
                        FlatButton(
                          onPressed: () {
                            val += 0;

                            setState(() {
                              setted = true;
                            });
                            print("opt 4");
                          },
                          color: const Color(0xFF233C67),
                          child: Text(
                            "D)\t\t\t\t\t\t9\t\t\t\t\t\t\t\t",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ], //buttonbar
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                val += 0;

                setState(() {
                  setted = true;
                });
                print("skip1");
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qn2 extends StatefulWidget {
  @override
  _Qn2State createState() => _Qn2State();
}

class _Qn2State extends State<Qn2> {
  Timer _timer2;
  int _start2 = 20;
  _Qn2State() {
    if (setted == false) {
      startTimer();
      print("timer2 started");
    }
  }
  bool setted = false;
  void dispose() {
    _timer2.cancel();
    super.dispose();
    print("timer 2 disposed");
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer2 = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start2 = _start2 - 1;
              if (_start2 < 1 || setted == true) {
                timer.cancel();
                setted = true;
                print("time up2!!");
                Navigator.pushNamedAndRemoveUntil(
                    context, '/c1', ModalRoute.withName('/b1'));
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Container(),
          backgroundColor: const Color(0xFF233C67),
          title: Text("Question 2"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: null,
                child: Text(
                  "Timer\t\t$_start2:00",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Qn2.How many planets are there in our solar system?",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "____________________________________________________",
                      style: TextStyle(color: Colors.white),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                              print("opt21");
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "A)\t\t\t\t\t\t\t7\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 1;
                              setState(() {
                                setted = true;
                              });
                              print("opt22");
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "B)\t\t\t\t\t\t\t8\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                              print("opt23");
                            },
                            color: const Color(0xFF233C67),
                            child: Text("C)\t\t\t\t\t\t\t9\t\t\t\t\t\t\t\t",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0))),
                        FlatButton(
                          onPressed: () {
                            val += 0;
                            setState(() {
                              setted = true;
                            });
                            print("opt24");
                          },
                          color: const Color(0xFF233C67),
                          child: Text(
                            "D)\t\t\t\t\t\t10\t\t\t\t\t\t\t",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ], //buttonbar
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                val += 0;
                setState(() {
                  setted = true;
                });
                print("skip2");
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qn3 extends StatefulWidget {
  @override
  _Qn3State createState() => _Qn3State();
}

class _Qn3State extends State<Qn3> {
  Timer _timer1;
  int _start1 = 20;
  _Qn3State() {
    if (setted == false) {
      startTimer();
      print("timer1started");
    }
  }
  void dispose() {
    _timer1.cancel();
    super.dispose();
    print("disposed 1");
  }

  bool setted = false;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer1 = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start1 = _start1 - 1;
              if (_start1 < 1 || setted == true) {
                timer.cancel();
                setted = true;
                print("time up1!!");

                Navigator.pushNamedAndRemoveUntil(
                    context, '/d1', ModalRoute.withName('/c1'));
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Container(),
          backgroundColor: const Color(0xFF233C67),
          title: Text("Question 3"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: () {},
                child: Text(
                  "Timer\t\t$_start1:00",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Qn3.\tOdd one out!-Find\n",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "____________________________________________________",
                      style: TextStyle(color: Colors.white),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              val += 1;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "A)\t\t\t\t\tFish \t\t\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 1;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "B)\t\t\t\t\tLizard \t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 1;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text("C)\t\t\t\t\tTortoise\t\t\t\t",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0))),
                        FlatButton(
                          onPressed: () {
                            val += 1;
                            setState(() {
                              setted = true;
                            });
                          },
                          color: const Color(0xFF233C67),
                          child: Text(
                            "D)\t\t\t\t\tSnake\t\t\t\t\t\t\t\t",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ], //buttonbar
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                val += 0;
                setState(() {
                  setted = true;
                });
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qn10 extends StatefulWidget {
  @override
  _Qn10State createState() => _Qn10State();
}

class Qn4 extends StatefulWidget {
  @override
  _Qn4State createState() => _Qn4State();
}

class _Qn4State extends State<Qn4> {
  Timer _timer1;
  int _start1 = 20;
  _Qn4State() {
    if (setted == false) {
      startTimer();
      print("timer1started");
    }
  }

  void dispose() {
    _timer1.cancel();
    super.dispose();
    print("disposed 1");
  }

  bool setted = false;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer1 = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start1 = _start1 - 1;
              if (_start1 < 1 || setted == true) {
                timer.cancel();
                setted = true;
                print("time up1!!");

                Navigator.pushNamedAndRemoveUntil(
                    context, '/e1', ModalRoute.withName('/d1'));
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Container(),
          backgroundColor: const Color(0xFF233C67),
          title: Text("Question 4"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: null,
                child: Text(
                  "Timer\t\t$_start1:00",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Qn4.\tAjanta and Ellora Caves is\nsituated in which state?",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "____________________________________________________",
                      style: TextStyle(color: Colors.white),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              val += 1;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "A)\t\t\t\tMaharashtra\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "B)\t\t\t\tRajasthan\t\t\t\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                                "C)\t\t\t\tDelhi\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0))),
                        FlatButton(
                          onPressed: () {
                            val += 0;
                            setState(() {
                              setted = true;
                            });
                          },
                          color: const Color(0xFF233C67),
                          child: Text(
                            "D)\t\t\t\tTamil Nadu\t\t\t\t\t\t\t\t",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ], //buttonbar
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                val += 0;
                setState(() {
                  setted = true;
                });
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qn5 extends StatefulWidget {
  @override
  _Qn5State createState() => _Qn5State();
}

class _Qn5State extends State<Qn5> {
  Timer _timer5;
  int _start5 = 20;
  _Qn5State() {
    if (setted == false) {
      startTimer();
      print("timer1started");
    }
  }

  void dispose() {
    _timer5.cancel();
    super.dispose();
    print("disposed 1");
  }

  bool setted = false;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer5 = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start5 = _start5 - 1;
              if (_start5 < 1 || setted == true) {
                timer.cancel();
                setted = true;
                print("time up1!!");

                Navigator.pushNamedAndRemoveUntil(
                    context, '/f1', ModalRoute.withName('/e1'));
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Container(),
          backgroundColor: const Color(0xFF233C67),
          title: Text("Question 5"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: () {},
                child: Text(
                  "Timer\t\t$_start5:00",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Qn5.\tWhat is the capital of Lakshadweep?\n ",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "____________________________________________________",
                      style: TextStyle(color: Colors.white),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "A)\t\t\t\t\tSilvassa\t\t\t\t\t\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "B)\t\t\t\t\tPortblair\t\t\t\t\t\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text("C)\t\t\t\t\tPondicherry\t\t\t\t\t\t\t",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0))),
                        FlatButton(
                          onPressed: () {
                            val += 1;
                            setState(() {
                              setted = true;
                            });
                          },
                          color: const Color(0xFF233C67),
                          child: Text(
                            "D)\t\t\t\t\tKavarati\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ], //buttonbar
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                val += 0;
                setState(() {
                  setted = true;
                });
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qn6 extends StatefulWidget {
  @override
  _Qn6State createState() => _Qn6State();
}

class _Qn6State extends State<Qn6> {
  Timer _timer6;
  int _start6 = 20;
  _Qn6State() {
    if (setted == false) {
      startTimer();
      print("timer1started");
    }
  }

  void dispose() {
    _timer6.cancel();
    super.dispose();
    print("disposed 1");
  }

  bool setted = false;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer6 = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start6 = _start6 - 1;
              if (_start6 < 1 || setted == true) {
                timer.cancel();
                setted = true;
                print("time up1!!");

                Navigator.pushNamedAndRemoveUntil(
                    context, '/g1', ModalRoute.withName('/f1'));
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Container(),
          backgroundColor: const Color(0xFF233C67),
          title: Text("Question 6"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: () {},
                child: Text(
                  "Timer\t\t$_start6:00",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Qn6.\tThe disease Scurvy is caused due\n to the deficiency of which vitamin?",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "____________________________________________________",
                      style: TextStyle(color: Colors.white),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              val += 1;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "A)\t\t\t\t\tVitamin C\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "B)\t\t\t\t\tVitamin B\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text("C)\t\t\t\t\tVitamin A\t\t\t\t\t\t\t",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0))),
                        FlatButton(
                          onPressed: () {
                            val += 0;
                            setState(() {
                              setted = true;
                            });
                          },
                          color: const Color(0xFF233C67),
                          child: Text(
                            "D)\t\t\t\t\tVitamin D\t\t\t\t\t\t\t",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ], //buttonbar
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                val += 0;
                setState(() {
                  setted = true;
                });
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qn7 extends StatefulWidget {
  @override
  _Qn7State createState() => _Qn7State();
}

class _Qn7State extends State<Qn7> {
  Timer _timer7;
  int _start7 = 20;
  _Qn7State() {
    if (setted == false) {
      startTimer();
      print("timer1started");
    }
  }

  void dispose() {
    _timer7.cancel();
    super.dispose();
    print("disposed 1");
  }

  bool setted = false;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer7 = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start7 = _start7 - 1;
              if (_start7 < 1 || setted == true) {
                timer.cancel();
                setted = true;
                print("time up1!!");

                Navigator.pushNamedAndRemoveUntil(
                    context, '/h1', ModalRoute.withName('/g1'));
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Container(),
          backgroundColor: const Color(0xFF233C67),
          title: Text("Question 7"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: () {},
                child: Text(
                  "Timer\t\t$_start7:00",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Qn7.\tHow many teeths does a human have?\n",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "____________________________________________________",
                      style: TextStyle(color: Colors.white),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "A)\t\t\t\t\t30 \t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "B)\t\t\t\t\t31 \t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 1;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text("C)\t\t\t\t\t32 \t\t\t\t\t\t\t",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0))),
                        FlatButton(
                          onPressed: () {
                            val += 0;
                            setState(() {
                              setted = true;
                            });
                          },
                          color: const Color(0xFF233C67),
                          child: Text(
                            "D)\t\t\t\t\t34 \t\t\t\t\t\t\t",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ], //buttonbar
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                val += 0;
                setState(() {
                  setted = true;
                });
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qn8 extends StatefulWidget {
  @override
  _Qn8State createState() => _Qn8State();
}

class _Qn8State extends State<Qn8> {
  Timer _timer8;
  int _start8 = 20;
  _Qn8State() {
    if (setted == false) {
      startTimer();
      print("timer1started");
    }
  }

  void dispose() {
    _timer8.cancel();
    super.dispose();
    print("disposed 1");
  }

  bool setted = false;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer8 = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start8 = _start8 - 1;
              if (_start8 < 1 || setted == true) {
                timer.cancel();
                setted = true;
                print("time up1!!");

                Navigator.pushNamedAndRemoveUntil(
                    context, '/i1', ModalRoute.withName('/h1'));
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Container(),
          backgroundColor: const Color(0xFF233C67),
          title: Text("Question 8"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: () {},
                child: Text(
                  "Timer\t\t$_start8:00",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Qn8.\tThe animal that eats only plant \nand herbs are called?",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "____________________________________________________",
                      style: TextStyle(color: Colors.white),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              val += 1;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "A)\t\t\t\t\tHerbivores\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "B)\t\t\t\t\tCarnivores\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                                "C)\t\t\t\t\tHumans\t\t\t\t\t\t\t\t\t\t\t\t",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0))),
                        FlatButton(
                          onPressed: () {
                            val += 0;
                            setState(() {
                              setted = true;
                            });
                          },
                          color: const Color(0xFF233C67),
                          child: Text(
                            "D)\t\t\t\t\tOmnivores\t\t\t\t\t\t\t\t",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ], //buttonbar
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                val += 0;
                setState(() {
                  setted = true;
                });
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qn9 extends StatefulWidget {
  @override
  _Qn9State createState() => _Qn9State();
}

class _Qn9State extends State<Qn9> {
  Timer _timer9;
  int _start9 = 20;
  _Qn9State() {
    if (setted == false) {
      startTimer();
      print("timer1started");
    }
  }

  void dispose() {
    _timer9.cancel();
    super.dispose();
    print("disposed 1");
  }

  bool setted = false;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer9 = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start9 = _start9 - 1;
              if (_start9 < 1 || setted == true) {
                timer.cancel();
                setted = true;
                print("time up1!!");

                Navigator.pushNamedAndRemoveUntil(
                    context, '/j1', ModalRoute.withName('/i1'));
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Container(),
          backgroundColor: const Color(0xFF233C67),
          title: Text("Question 9"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: () {},
                child: Text(
                  "Timer\t\t$_start9:00",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Qn9.\tHow many days are there in a leap \nyear?",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "____________________________________________________",
                      style: TextStyle(color: Colors.white),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "A)\t\t\t\t\t364  \t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "B)\t\t\t\t\t365 \t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 1;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text("C)\t\t\t\t\t366\t\t\t\t\t\t\t\t\t",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0))),
                        FlatButton(
                          onPressed: () {
                            val += 0;
                            setState(() {
                              setted = true;
                            });
                          },
                          color: const Color(0xFF233C67),
                          child: Text(
                            "D)\t\t\t\t\t367 \t\t\t\t\t\t\t\t",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ], //buttonbar
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                val += 0;
                setState(() {
                  setted = true;
                });
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Qn10State extends State<Qn10> {
  Timer _timer;
  int _start = 20;
  _Qn10State() {
    if (setted == false) {
      startTimer();
      print("Timer10 started");
    }
  }
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  bool setted = false;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start = _start - 1;
              if (_start < 1 || setted == true) {
                timer.cancel();
                setted = true;
                Navigator.pushNamedAndRemoveUntil(
                    context, '/k1', ModalRoute.withName('/j1'));
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: Container(),
          backgroundColor: const Color(0xFF233C67),
          title: Text("Question 10"), //ans option1
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: null,
                child: Text(
                  "Timer\t\t$_start:00",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Qn10.\tWhich of the following is the\n National river of India?",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "____________________________________________________",
                      style: TextStyle(color: Colors.white),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "A)\t\t\t\t\tGodavari\t\t\t\t\t\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 0;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                              "B)\t\t\t\t\tYamuna\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )),
                        FlatButton(
                            onPressed: () {
                              val += 1;
                              setState(() {
                                setted = true;
                              });
                            },
                            color: const Color(0xFF233C67),
                            child: Text(
                                "C)\t\t\t\t\tGanga\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0))),
                        FlatButton(
                          onPressed: () {
                            val += 0;
                            setState(() {
                              setted = true;
                            });
                          },
                          color: const Color(0xFF233C67),
                          child: Text(
                            "D)\t\t\t\t\tBrahmaputra\t\t\t\t\t",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ], //buttonbar
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                val += 0;
                setState(() {
                  setted = true;
                });
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qnend extends StatefulWidget {
  final counter;

  final controller;

  const Qnend({Key key, this.counter = 0, this.controller}) : super(key: key);
  @override
  _MyanimationControllerState1 createState() =>
      _MyanimationControllerState1(counter, controller);
}

class _MyanimationControllerState1 extends State<Qnend>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  bool pushed = true;
  int counter = 0;
  Timer _timer;
  int _start = 15;
  _MyanimationControllerState1(counter, _controller);

  bool setted = false;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              _start = _start - 1;
              if (_start < 1 || setted == true) {
                timer.cancel();
                setted = true;
                Navigator.pushNamedAndRemoveUntil(
                    context, '/p', ModalRoute.withName('/k1'));
              }
              if (pushed == true) {
                timer.cancel();
                Navigator.pushNamedAndRemoveUntil(
                    context, '/a1', ModalRoute.withName('/k1'));
              }
            }));
  }

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this)
          ..repeat();
    if (setted == false && pushed == false) {
      startTimer();
      print("Timer10 started");
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xFF5780D9),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(1.5, 1.5),
              colors: [
                const Color(0xFF233C67),
                const Color(0xFF5780D9),
              ]),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 175.0,
              left: 0.0,
              right: 0.0,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                  ),
                  Text(
                    "Your Score\t\t:\t\t$val",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Congratulations!!!",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        color: const Color(0xFF233C67),
                        onPressed: () {
                          val = 0;
                          setState(() {
                            pushed = true;
                          });
                        },
                        child: Text(
                          "Play Again",
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ),
                      FlatButton(
                        color: const Color(0xFF233C67),
                        onPressed: () {
                          val = 0;
                          setState(() {
                            setted = true;
                          });
                        },
                        child: Text(
                          "Return Menu",
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      )
                    ],
                  )
                ],
              ), //centre column
            ),
            Positioned(
                left: 125.0,
                top: 15.0,
                child: AnimatedIcon(
                    icon: AnimatedIcons.close_menu,
                    color: Colors.white,
                    progress: _controller)),
            Positioned(
              left: 65.0,
              top: 125.0,
              child: RotationTransition(
                turns: _controller,
                child: Icon(
                  Icons.add,
                  size: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              right: 80.0,
              top: 75.0,
              child: FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.0).animate(_controller),
                child: Icon(Icons.ac_unit, color: Colors.white),
              ),
            ),
            Positioned(
              right: 50.0,
              top: 190.0,
              child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Icon(Icons.bubble_chart,
                        color: Colors.white70,
                        size: 10.0 + (_controller.value * 20));
                  }),
            ),
            Positioned(
              left: 35.0,
              top: 215.0,
              child: FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.0).animate(_controller),
                child: AnimatedIcon(
                    icon: AnimatedIcons.list_view,
                    progress: _controller,
                    color: Colors.white),
              ),
            ),
            Positioned(
                right: 70.0,
                bottom: 115.0,
                child: AnimatedIcon(
                  icon: AnimatedIcons.pause_play,
                  progress: _controller,
                  color: Colors.white,
                )),
            Positioned(
                right: 30.0,
                bottom: 190.0,
                child: RotationTransition(
                  turns: _controller,
                  child: Icon(
                    Icons.add,
                    size: 25.0,
                    color: Colors.white,
                  ),
                )),
            Positioned(
              left: 60.0,
              bottom: 125.0,
              child: FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.0).animate(_controller),
                child: AnimatedIcon(
                  icon: AnimatedIcons.menu_arrow,
                  progress: _controller,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
            ),
            Positioned(
              bottom: 40.0,
              left: 175.0,
              child: AnimatedIcon(
                  icon: AnimatedIcons.search_ellipsis,
                  size: 25.0,
                  color: Colors.white,
                  progress: _controller),
            ),
            Positioned(
              bottom: 225.0,
              left: 25.0,
              child: RotationTransition(
                turns: _controller,
                child: Icon(
                  Icons.add,
                  size: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
