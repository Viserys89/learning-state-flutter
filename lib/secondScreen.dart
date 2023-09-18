import 'package:flutter/material.dart';
import 'package:get/get.dart';

class secondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return MaterialApp(
      title: 'Input Form',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX'),
          backgroundColor: Colors.blue,
        ),
        body: Text(data),
      ),
    );
  }
}
