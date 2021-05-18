import 'package:contador/counter_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group('Counter',(){
    final model = CounterModel();
    test('Counter should start with 0', (){
    
     expect(model.counter, 0);
    });

    test('Counter should be incremented by 1', (){
  
    model.modifierCounter(1, (valor1,valor2) {
      return valor1+valor2;
    });

    expect(model.counter, 1);
    });
  });
}