import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: CounterScreen(),
    ),
  );
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu contador"),
        centerTitle: true,
        leading: Container(
          color: Colors.white
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.red
      ),  
    );
  }
}