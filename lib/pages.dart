import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({this.title}): super(key: UniqueKey());
  final String title;
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.yellow,
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.black,
      ),
    );
  }
}
