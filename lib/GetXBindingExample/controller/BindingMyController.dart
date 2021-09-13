
import 'package:get/get.dart';

class BindingMyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}