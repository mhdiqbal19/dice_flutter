import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

// class HomeController extends GetxController {
//   RxString dataString = "Data".obs;
//   // var dataPantau = 10;
//   void updateDataString() {
//     dataString.value = "Data (update)";
//   }
//
//   void resetDataString() {
//     dataString.value = "Data";
//   }
//
//   RxInt dataPantau =
//       10.obs; //selalu dipantau ketika ada perubahan  //buat reactive
//   void tambahData() {
//     dataPantau = dataPantau + 1;
//     if (dataPantau % 5 == 0) {
//       update();
//     }
//   }
//
//   void refreshTampilan() {
//     update();
//   }
//
//   RxDouble dataDouble = 0.0.obs;
//   void incrementDouble() => dataDouble.value++;
//
//   void decrementDouble() => dataDouble.value--;
// }

class HomeController extends GetxController {
  RxInt dataPantau = 0.obs;

  void change() => dataPantau++;

  @override
  void onInit() {
    //ever(dataPantau, (data) => print("perubahan"));
    //once(dataPantau, (data) => print("perubahan"));
    // debounce(dataPantau, (data) => print("perubahan"),
    //     time: Duration(seconds: 2));
    interval(dataPantau, (data) => print("perubahan"),
        time: Duration(seconds: 2));
    super.onInit();
  }
}
