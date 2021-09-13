
import 'package:get/get.dart';

class BindingHomeController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}