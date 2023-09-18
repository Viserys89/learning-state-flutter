import 'package:get/get.dart';

class counterPageController extends GetxController {
  //get builder/simpleway
  int _x = 0;
  //method getter x
  int get x => _x;
  //obx/reactive
  RxInt _y = 0.obs;
  //method getter y
  RxInt get y => _y;
  RxInt _z = 0.obs;
  //method getter z
  RxInt get z => _z;

  void sumXY() {
    _z.value = x + _y.value;
    print(_z.value);
  }

  void increaseX() {
    _x++;
    update();
    print(_x);
  }

  void decreaseX() {
    _x--;
    update();
    print(_x);
  }

  void increaseY() {
    _y++;
    print(_y);
  }

  void decreaseY() {
    _y--;
    print(_y);
  }
}
