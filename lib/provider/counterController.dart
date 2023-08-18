import 'package:get/get.dart';
import 'package:get_x/model/counter_model.dart';

class CounterController extends GetxController {
  Counter _counter = Counter();

  List sen = [7, 8, 9].obs;
  List ffs = [4, 5, 6].obs;
  List ott = [1, 2, 3].obs;

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
