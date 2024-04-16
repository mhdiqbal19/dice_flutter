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
  final myController c = Get.put(myController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text(
          "Stateless",
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
                "${c.data}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    c.decrement();
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    c.increment();
                  },
                  child: Text("+"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class myController extends GetxController {
  var data = 0.obs; //state dipantau perubahannya
  increment() => data++;
  decrement() => data--;
}
