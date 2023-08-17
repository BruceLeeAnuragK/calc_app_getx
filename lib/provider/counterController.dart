import 'package:get/get.dart';
import 'package:get_x/model/counter_model.dart';

class CounterController extends GetxController {
  Counter _counter = Counter();

  get getCounter {
    return _counter.counter.value;
  }

  void increament() {
    _counter.counter.value++;
  }

  void decreament() {
    _counter.counter.value--;
  }
}
