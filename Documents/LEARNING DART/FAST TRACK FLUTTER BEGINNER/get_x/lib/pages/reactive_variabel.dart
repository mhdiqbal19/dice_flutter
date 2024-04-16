import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

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
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text(
          "Tipe Data RX",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Obx(
              //   () => Text(
              //     "${homeC.dataPantau.value}",
              //     style: TextStyle(fontSize: 20),
              //   ),
              // ),    // Obx(
              //   () => Text(
              //     "${homeC.dataPantau.value}",
              //     style: TextStyle(fontSize: 20),
              //   ),
              // ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("-"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      //  homeC.tambahData();
                    },
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Obx(
              //   () => Text(
              //     "${homeC.dataString}",
              //     style: TextStyle(fontSize: 20),
              //   ),
              // ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //    homeC.updateDataString();
                    },
                    child: Text("Update"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      //   homeC.resetDataString();
                    },
                    child: Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Obx(
              //   () => Text(
              //     "${homeC.dataDouble}",
              //     style: TextStyle(fontSize: 20),
              //   ),
              // ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //     homeC.incrementDouble();
                    },
                    child: Text("-"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      //   homeC.decrementDouble();
                    },
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
