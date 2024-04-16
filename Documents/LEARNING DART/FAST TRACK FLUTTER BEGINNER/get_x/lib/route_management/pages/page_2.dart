import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/route_management/pages/page_3.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Page Dua",
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
            Text("Page Dua"),
            ElevatedButton(
              onPressed: () {
                //  Navigator.of(context).pop();
                Get.to(PageTiga());
              },
              child: Text("Next >>"),
            ),
          ],
        ),
      ),
    );
  }
}
