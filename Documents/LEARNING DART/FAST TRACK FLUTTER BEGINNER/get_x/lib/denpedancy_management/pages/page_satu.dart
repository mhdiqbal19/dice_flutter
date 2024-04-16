import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/denpedancy_management/controllers/page_satu_controller.dart';
import 'package:get_x/denpedancy_management/pages/page_dua.dart';

class PageSatu extends StatelessWidget {
  PageSatuController pageSatuC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
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
            // Text(
            //   "${pageSatuC.data['name']} - ${pageSatuC.data['umur']} Tahun",
            //   style: TextStyle(
            //     fontSize: 20,
            //   ),
            // ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageDua(),
                  ),
                );
              },
              child: Text("Next Page >>"),
            ),
          ],
        ),
      ),
    );
  }
}
