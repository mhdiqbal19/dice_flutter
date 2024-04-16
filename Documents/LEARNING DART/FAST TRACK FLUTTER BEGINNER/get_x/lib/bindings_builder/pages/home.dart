import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/bindings_builder/controllers/counter_controller.dart';
import 'package:get_x/bindings_builder/pages/counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Home Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Get.to(
            //   () => CounterPage(),
            //   binding: BindingsBuilder.put(() => CounterConroller()),
            // );
            Get.toNamed("/counter");
          },
          child: Text("COUNTER PAGE >>"),
        ),
      ),
    );
  }
}
