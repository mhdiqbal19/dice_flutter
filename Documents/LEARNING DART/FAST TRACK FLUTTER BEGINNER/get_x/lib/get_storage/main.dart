import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_x/get_storage/pages/login.dart';
import 'pages/home.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      getPages: [
        GetPage(name: "/login", page: () => LoginPage()),
        GetPage(name: "/home", page: () => HomePage()),
      ],
    );
  }
}
