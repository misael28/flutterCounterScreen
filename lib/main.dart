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
  void _operation(String operation){
    int novoResultado = 0;
    if(operation == 'add'){
      novoResultado = resultado+1;
    }else if(operation == 'remove'){
      novoResultado = resultado-1;
    }

    setState((){
      resultado = novoResultado;
    });
  };

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
      OperationFloatingActionButton(Icon(Icons.remove), (){
          _operation('remove');
      }),
        OperationFloatingActionButton(Icon(Icons.add), (){
          _operation('add');
      })
        ],
      )
    );
  }
}

class OperationFloatingActionButton extends StatelessWidget {
  final Function func;
  final Widget icon;

  OperationFloatingActionButton(this.icon, this.func, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: func, child: icon);
  }
}