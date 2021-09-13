
import 'package:get/get.dart';

class GetViewCountController extends GetxController {

  var count = 0.obs;

  void increment() {
    count++;
  }
}