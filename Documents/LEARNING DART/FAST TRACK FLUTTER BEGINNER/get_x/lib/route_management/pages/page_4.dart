import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/route_management/pages/page_5.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Page Empat",
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
            Text("Page Empat"),
            ElevatedButton(
              onPressed: () {
                //  Navigator.of(context).pop();
                Get.to(PageLima());
              },
              child: Text("Next >>"),
            ),
          ],
        ),
      ),
    );
  }
}
