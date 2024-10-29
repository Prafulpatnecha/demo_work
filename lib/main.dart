import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled/controller/home_get_controller.dart';
import 'package:untitled/view/home/home_page.dart';


void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    HomeGetController homeGetController = Get.put(HomeGetController());
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: () => const HomePage(),transition: Transition.cupertinoDialog),
        GetPage(name: "/shop", page: () => const HomePage(),transition: Transition.circularReveal),
      ],
    );
  }
}
