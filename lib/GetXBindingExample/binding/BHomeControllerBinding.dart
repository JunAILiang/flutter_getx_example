
import 'package:flutter_getx_example/GetXBindingExample/controller/BindingHomeController.dart';
import 'package:get/get.dart';

class BHomeControllerBinding implements Bindings {

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BindingHomeController>(() => BindingHomeController());
  }
  
}