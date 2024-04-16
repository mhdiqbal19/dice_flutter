import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/bindings_builder/bindings/counter_bindings.dart';
import 'package:get_x/bindings_builder/controllers/counter_controller.dart';
import 'package:get_x/bindings_builder/pages/counter.dart';
import 'pages/home.dart';

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
      getPages: [
        GetPage(
          name: "/counter",
          page: () => CounterPage(),
          binding: CounterBindings(),
        ),
      ],
    );
  }
}
