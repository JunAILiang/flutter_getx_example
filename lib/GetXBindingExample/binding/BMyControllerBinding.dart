
import 'package:flutter_getx_example/GetXBindingExample/controller/BindingMyController.dart';
import 'package:get/get.dart';

class BMyControllerBinding implements Bindings {

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BindingMyController>(() => BindingMyController());
  }

}