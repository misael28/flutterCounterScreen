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
  var resultado = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu contador"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: 
            Text('Botão pressionado: ', 
            style: TextStyle(
            fontSize: 24
          ),
          ),
          ),
          Center(child: Text('$resultado', style: TextStyle(fontSize: 30),))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Botao pressionado');
          setState((){
            resultado += 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}