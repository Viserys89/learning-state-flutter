import 'package:flutter/material.dart';
import 'package:flutter_application_login/controllers/counterPageController.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    counterPageController controller = Get.put(counterPageController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GetBuilder<counterPageController>(builder: (control) {
              return TextButton(
                onPressed: () {},
                child: Text(controller.x.toString(),
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
              );
            }),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                controller.increaseX();
              },
              child: Text('+',
                  style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                controller.decreaseX();
              },
              child: Text('-',
                  style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
