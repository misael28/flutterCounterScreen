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
            Text('Voce pressionou o botão: ', 
            style: TextStyle(
            fontSize: 24
          ),
          ),
          ),
          Center(child: Text("${(resultado>1) ? '$resultado vezes' : '$resultado vez' }", style: TextStyle(fontSize: 30),))
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              print('Botao pressionado');
              setState((){
                resultado += 1;
              });
            },
            child: Icon(Icons.add),
      ),
        FloatingActionButton(
            onPressed: () {
              print('Botao pressionado');
              setState((){
                if(resultado<=0){
                  resultado = 0;
                }else {
                  resultado --;
                } 
              });
            },
            child: Icon(Icons.remove),
      )
        ],
      )
    );
  }
}