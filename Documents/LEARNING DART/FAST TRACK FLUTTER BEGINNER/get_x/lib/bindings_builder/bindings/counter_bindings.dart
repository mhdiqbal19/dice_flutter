import 'package:get/get.dart';
import 'package:get_x/bindings_builder/controllers/counter_controller.dart';

class CounterBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CounterConroller());
    // Get.put(CounterConroller());
    // Get.put(CounterConroller());
    // Get.put(CounterConroller());
    // Get.put(CounterConroller());
  }
}
