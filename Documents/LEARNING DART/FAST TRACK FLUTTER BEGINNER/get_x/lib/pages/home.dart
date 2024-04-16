import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text(
          "Reactive State Manager",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () => Text(
            //     "${homeC.dataPantau}",
            //     style: TextStyle(
            //       fontSize: 50,
            //     ),
            //   ),
            // ),
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                "${controller.dataPantau}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                //   homeC.tambahData();
                // homeC.update();
              },
              child: Text(
                "Tambah Data",
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                homeC.refresh();
              },
              child: Text(
                "Refresh Tampilan",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
