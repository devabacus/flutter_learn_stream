import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  Future<String> helloAsync() async {
    await Future.delayed(Duration(seconds: 5));
    return 'Message from future';
  }

  test() async{
      String x = await helloAsync();
      print(x);
  }

  @override
  Widget build(BuildContext context) {
    test();

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
