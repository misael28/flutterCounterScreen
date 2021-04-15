import 'package:contador/counter_controller.dart';
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
  final controller = CounterController();

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
          Center(child: 
          Text(controller.getCounter()
          , style: TextStyle(fontSize: 30),))
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
      OperationFloatingActionButton(Icon(Icons.remove), (){
        setState(() {
          controller.decrementCounter();
        });
      }),
        OperationFloatingActionButton(Icon(Icons.add), (){
          setState(() {
            controller.incrementCounter();  
          });
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