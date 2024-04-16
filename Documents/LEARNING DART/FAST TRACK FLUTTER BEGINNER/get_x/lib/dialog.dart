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
          "Dialog",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showDialog(
            //   context: context,
            //   builder: (context) {
            //     return AlertDialog(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(20),
            //       ),
            //       title: Text("Title"),
            //       content: Text("Ini Content"),
            //     );
            //   },
            // );
            Get.defaultDialog(
              title: "Title",
              middleText: "Content",
              actions: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Ok"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Cancel"),
                ),
              ],
            );
          },
          child: Text("Open Dialog"),
        ),
      ),
    );
  }
}
