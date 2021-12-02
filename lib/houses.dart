import 'package:flutter/material.dart';

class Houses extends StatefulWidget {
  const Houses({Key? key}) : super(key: key);

  @override
  _HousesState createState() => _HousesState();
}

class _HousesState extends State<Houses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Harry Potter Houses Quizz'),
        ),
        body: Container());
  }
}
