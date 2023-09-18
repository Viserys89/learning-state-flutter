import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_login/controllers/inputFormController.dart';
// import 'package:flutter_application_login/secondScreen.dart';

class inputForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    inputFormController hc = Get.put(inputFormController());
    return MaterialApp(
      title: 'Input Form',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              TextField(
                controller: hc.namacontroller,
                decoration: InputDecoration(labelText: 'Input nama'),
                onSubmitted: (value) {
                  hc.gantiNilai(hc.namacontroller.text);
                  Get.snackbar('Nilai dari variable nama adalah : ', hc.nama,
                      snackPosition: SnackPosition.BOTTOM,
                      duration: Duration(seconds: 3));
                },
              ),
              SizedBox(
                height: 10,
              ),
              // Obx(() => Text(hc.nama.value))
              GetBuilder<inputFormController>(builder: (hc) {
                return Text(hc.nama);
              }),
              Obx(() {
                final isOpen = hc.isOpen.value;
                return Column(
                  children: [
                    Row(
                      children: [
                        Switch(
                          value: isOpen,
                          activeColor: Colors.green,
                          inactiveThumbColor: Colors.red,
                          onChanged: (value) {
                            hc.setIsOpen(value);
                          },
                        ),
                        Text(isOpen ? 'Open' : 'Closed'),
                      ],
                    ),
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
