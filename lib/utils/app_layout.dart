import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHight(int pixels) {
    double x = getScreenHight() / pixels;
    return getScreenHight() / x;
  }

  static getWidth(int pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
