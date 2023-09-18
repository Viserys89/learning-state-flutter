import 'package:flutter/material.dart';
import 'package:flutter_application_login/CounterPage.dart';
import 'package:flutter_application_login/GetBuilder.dart';
import 'package:flutter_application_login/ListScreen.dart';
import 'package:flutter_application_login/MainMenu.dart';
import 'package:flutter_application_login/StateManagement.dart';
import 'package:flutter_application_login/inputForm.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Belajar Flutter',
        theme: ThemeData(
            primarySwatch: Colors.grey, scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        routes: {
          '/StateManagement': (context) => managestate(),
          '/inputForm': (context) => inputForm(),
        },
        getPages: [
          GetPage(name: "/", page: () => MainMenu()),
          GetPage(name: "/StateManagement", page: () => managestate()),
          GetPage(name: "/InputForm", page: () => inputForm()),
          GetPage(name: "/GetBuilder", page: () => getBuilder()),
          GetPage(name: "/CounterPage", page: () => CounterPage()),
          GetPage(name: "/ListScreen", page: () => const ListScreen()),
        ],
        home: const MainMenu());
  }
}
