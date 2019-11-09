import 'dart:ui';

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


  streamSub(Stream stream1) async {
    print("Вызвали функцию только один раз. Остально асинхронный стрим");
    await for(int i in stream1) {
      print('Подписаны на новые значения. Получили: $i');
    }
  }

  test1() async {
    Duration interval = Duration(seconds: 2);
    Stream<int> stream = Stream<int>.periodic(interval, CallBackEvery_2seconds);
    streamSub(stream);
  }

  int CallBackEvery_2seconds(int computationCount) {
    print('computationCountf = $computationCount');
    return (computationCount + 1) * 2;
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
        body: Column(children: <Widget>[
          RaisedButton(child: Text('Задержка 5 сек'), onPressed: test1,)
        ],)
      ),
    );
  }
}
