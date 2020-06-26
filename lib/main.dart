import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alart Dialog",
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "A New Alart Dialog",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Alart Title"),
                      content: Text("This is a alart dialog message"),
                      actions: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("OK"),
                        )
                      ],
                    );
                  });
            },
            child: Text(
              "Click Here",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
