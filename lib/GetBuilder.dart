import 'package:flutter/material.dart';
import 'package:flutter_application_login/controllers/TapController.dart';
import 'package:get/get.dart';

class getBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    tapController controller = Get.put(tapController());
    return MaterialApp(
      title: 'Get Builder',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get Builder'),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GetBuilder<tapController>(builder: (control) {
                return ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(50.0),
                  ),
                  child: Text(controller.x.toString(),
                      style: TextStyle(fontSize: 18.0)),
                );
              }),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  controller.increaseX();
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
                  controller.decreaseX();
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
