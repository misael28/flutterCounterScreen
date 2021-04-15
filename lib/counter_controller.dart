import 'package:contador/counter_model.dart';

class CounterController {
  final model = CounterModel();

  String getCounter(){
    return model.counter.toString();
  }

  void incrementCounter(){
    model.modifierCounter(1, add);
  }

  void decrementCounter(){
    model.modifierCounter(1, sub);
  }

  int sub(int num1,int num2){
    if(num2>num1){
      return num2-num1;
    }else{
      return 0;
    }
  }

  int add(int num1, int num2){
    return num1+num2;
  }
}