import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/denpedancy_management/controllers/page_satu_controller.dart';
import 'package:get_x/denpedancy_management/pages/page_satu.dart';

class PageDua extends StatelessWidget {
  PageSatuController pageSatuC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
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
            Text(
              "${pageSatuC.data2['name']} - ${pageSatuC.data2['umur']} Tahun",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
