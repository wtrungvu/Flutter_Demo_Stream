import 'dart:async';

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
              body: HomeScreen()),
        ));
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StreamController<String> timmerStreamController = StreamController<String>();

  @override
  void initState() {
    super.initState();
  }

  Stream<String> streamData() {
    return Stream<String>.periodic(Duration(seconds: 1), (value) {
      return value.toString();
    });
  }

  void initStream() {
    Stream.periodic(Duration(seconds: 1), (value) {
      return value;
    }).take(10).listen((value) {
      timmerStreamController.sink.add(value.toString());
      if (value == 9) {
        timmerStreamController.close();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder<String>(
              stream: streamData(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text(
                    snapshot.error.toString(),
                    style: TextStyle(fontSize: 50.0),
                  );
                }
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return Text("Not connected to the Stream or null");
                  case ConnectionState.waiting:
                    return Text("Awaiting interaction");
                  case ConnectionState.active:
                    return Text("${snapshot.data}",
                        style: TextStyle(fontSize: 50.0));
                  case ConnectionState.done:
                    return Text("Stream has finished");
                  default:
                    return Text("Emty!");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
