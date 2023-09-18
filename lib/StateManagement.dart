import 'package:flutter/material.dart';
import 'package:flutter_application_login/GetBuilder.dart';
import 'package:flutter_application_login/SumXY.dart';
import 'package:flutter_application_login/operationObx.dart';
import 'package:get/get.dart';

class managestate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State Management'),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(getBuilder());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: EdgeInsets.all(50.0),
                ),
                child: Text('Get Builder', style: TextStyle(fontSize: 18.0)),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Get.to(operationObx());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.all(50.0),
                ),
                child: Text('OBX', style: TextStyle(fontSize: 18.0)),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SumXY(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: EdgeInsets.all(50.0),
                ),
                child: Text('SUM X Y', style: TextStyle(fontSize: 18.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
