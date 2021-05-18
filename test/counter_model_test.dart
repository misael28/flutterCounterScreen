import 'package:contador/counter_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('Counter should be incremented by 1', (){
    final model = CounterModel();

    model.modifierCounter(1, (valor1,valor2) {
      return valor1+valor2;
    });

    expect(model.counter, 1);
  });
}