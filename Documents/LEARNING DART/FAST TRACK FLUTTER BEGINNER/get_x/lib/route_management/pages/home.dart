import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/route_management/pages/page_1.dart';
import 'package:get_x/route_management/pages/page_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          "Home Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          ElevatedButton(
            onPressed: () {
              // Get.to(PageSatu());

              //route pushnamed   -> tidak perlu di import
              Get.toNamed("/page_satu");
            },
            child: Text("Page 1"),
          ),
          ElevatedButton(
            onPressed: () {
              //  Get.to(PageDua());
              // Get.off(PageDua());
              Get.toNamed("/page_dua");
            },
            child: Text("Page 2"),
          ),
        ],
      ),
    );
  }
}
