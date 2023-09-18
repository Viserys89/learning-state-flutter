import 'package:flutter/material.dart';
import 'package:flutter_application_login/controllers/TapController.dart';
import 'package:get/get.dart';

class operationObx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    tapController controller = Get.put(tapController());
    return MaterialApp(
      title: 'operation obx',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Operation OBX'),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Obx(
                () => ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(50.0),
                  ),
                  child: Text(controller.y.toString(),
                      style: TextStyle(fontSize: 18.0)),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  controller.increaseY();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  padding: EdgeInsets.all(50.0),
                ),
                child: Text('Increase', style: TextStyle(fontSize: 18.0)),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  controller.decreaseY();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  padding: EdgeInsets.all(50.0),
                ),
                child: Text('Decrease', style: TextStyle(fontSize: 18.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
