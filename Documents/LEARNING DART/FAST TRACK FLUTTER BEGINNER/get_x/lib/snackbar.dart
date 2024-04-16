import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text(
          "Snackbar",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar(
              "Hallo",
              "ini snackbar",
              snackPosition: SnackPosition.BOTTOM,
              margin: EdgeInsets.all(20),
              colorText: Colors.white,
              backgroundColor: Colors.teal[900],
            );
          },
          child: Text("Open Snackbar"),
        ),
      ),
    );
  }
}
