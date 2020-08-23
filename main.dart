import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Snack());
  }
}

class Snack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FloatingActionButton(
            onPressed: () {
              final snackBar = SnackBar(
                action: SnackBarAction(
                  label: 'undo',
                  onPressed: () {},
                ),
                content: Text(
                  "pressed button",
                ),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
            child: Center(child: Icon(Icons.arrow_forward_ios))),
      ),
    );
  }
}
