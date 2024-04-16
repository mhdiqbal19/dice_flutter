import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_x/denpedancy_management/controllers/page_satu_controller.dart';
import 'pages/page_satu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final pageSatuC = Get.put(PageSatuController());
  final pageSatuC = Get.lazyPut(() => PageSatuController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageSatu(),
    );
  }
}
