import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_x/route_management/pages/page_1.dart';
import 'package:get_x/route_management/pages/page_2.dart';
import 'package:get_x/route_management/pages/page_3.dart';
import 'package:get_x/route_management/pages/page_4.dart';
import 'package:get_x/route_management/pages/page_5.dart';
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
      // routes: {
      //   "home": (context) => HomePage(),
      //   "page_satu": (context) => PageSatu(),
      //   "page_dua": (context) => PageDua(),
      //   "page_tiga": (context) => PageTiga(),
      //   "page_empat": (context) => PageEmpat(),
      //   "page_lima": (context) => PageLima(),
      // },
      getPages: [
        GetPage(name: "/home", page: () => HomePage()),
        GetPage(name: "/page_satu", page: () => PageSatu()),
        GetPage(name: "/page_dua", page: () => PageDua()),
        GetPage(name: "/page_tiga", page: () => PageTiga()),
        GetPage(name: "/page_empat", page: () => PageEmpat()),
        GetPage(name: "/page_lima", page: () => PageLima()),
      ],
    );
  }
}
