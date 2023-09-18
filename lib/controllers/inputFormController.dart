import 'package:flutter/material.dart';
import 'package:get/get.dart';

class inputFormController extends GetxController {
  TextEditingController namacontroller = TextEditingController();
  //reactive state
  // RxString nama = RxString('');

  // void ChangeName(String nm) {
  //   nama.value = nm;
  //   print(nama.value);
  // }

  //=======

  //simple state
  String nama = "";
  void gantiNilai(String nm) {
    nama = nm;
    update();
  }

  RxBool isOpen = RxBool(true);

  void setIsOpen(bool Open) {
    isOpen(Open);
    print(isOpen.value);
  }
}
