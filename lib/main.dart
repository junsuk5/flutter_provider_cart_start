import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '이름',
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: Text('다음'),
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '나이',
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdPage()),
              );
            },
            child: Text('다음'),
          )
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdPage'),
      ),
      body: Column(
        children: <Widget>[
          Text('이름 : '),
          Text('나이 : '),
          RaisedButton(
            onPressed: () {},
            child: Text('전송'),
          )
        ],
      ),
    );
  }
}
