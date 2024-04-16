import 'package:get/get.dart';

class CounterConroller extends GetxController {
  RxInt data = 10.obs;

  void increment() => data++;
  void decrement() => data--;
}
