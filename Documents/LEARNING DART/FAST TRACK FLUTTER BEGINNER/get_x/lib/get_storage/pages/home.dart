import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_storage/controllers/login_controller.dart';

class HomePage extends StatelessWidget {
  final LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => loginC.logout(),
        child: Icon(Icons.logout),
      ),
    );
  }
}
