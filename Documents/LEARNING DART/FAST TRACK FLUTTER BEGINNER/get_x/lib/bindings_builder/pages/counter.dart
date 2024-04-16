import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/bindings_builder/controllers/counter_controller.dart';

class CounterPage extends StatelessWidget {
  // final counterC = Get.put(CounterConroller());
  CounterConroller counterC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Counter Page",
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
            Obx(
              () => Text(
                "${counterC.data}",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      counterC.increment();
                    },
                    child: Text("+")),
                ElevatedButton(
                    onPressed: () {
                      counterC.decrement();
                    },
                    child: Text("-")),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.back(),
        child: Text("<< Back"),
      ),
    );
  }
}
