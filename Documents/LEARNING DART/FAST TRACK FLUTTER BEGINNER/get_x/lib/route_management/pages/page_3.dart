import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/route_management/pages/page_4.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Page Tiga",
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
                Get.to(PageEmpat());
              },
              child: Text("Next >>"),
            ),
          ],
        ),
      ),
    );
  }
}
