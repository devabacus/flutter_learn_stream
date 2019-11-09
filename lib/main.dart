import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  Future<String> HelloAsync() async {
    await Future.delayed(Duration(seconds: 3));
    return 'Message from future';
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Stream learn"),),
        body: Text("hello"),
      ),
    );
  }
}
