import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: SizedBox(),
        title: Text(
          "Page Satu",
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
            Text("Page Satu"),
            ElevatedButton(
              onPressed: () {
                //  Navigator.of(context).pop();
                Get.back();
              },
              child: Text("<< Back"),
            ),
          ],
        ),
      ),
    );
  }
}
