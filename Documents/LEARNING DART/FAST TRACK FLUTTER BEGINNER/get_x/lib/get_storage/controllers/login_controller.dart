import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberMe = true.obs;

  void login() async {
    final box = GetStorage();
    if (emailC.text == "admin@gmail.com" && passC.text == "123") {
      if (box.read("dataRememberme") != null) {
        box.remove("dataRememberme");
      }
      if (rememberMe.isTrue) {
        //simpan data dan email di hp kita
        box.write(
          "dataRememberme",
          {
            "email": emailC.text,
            "pass": passC.text,
          },
        );
      }
      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
          title: "Error", middleText: "Email + Password anda salah!");
    }
  }

  void logout() {
    Get.offAllNamed("/login");
  }
}
