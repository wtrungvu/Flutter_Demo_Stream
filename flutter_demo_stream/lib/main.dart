import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo Stream',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Center(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Flutter Demo Stream"),
            ),
            body: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 50.0),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
