import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get_x/route_management/pages/home.dart';

class PageLima extends StatelessWidget {
  const PageLima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Page Lima",
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
            Text("Page Tiga"),
            ElevatedButton(
              onPressed: () {
                //  Navigator.of(context).pop();
                // Get.offAll(HomePage());
                Get.offAllNamed("/home");
              },
              child: Text("<< Back All"),
            ),
          ],
        ),
      ),
    );
  }
}
