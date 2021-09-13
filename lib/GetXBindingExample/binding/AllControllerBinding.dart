import 'package:flutter_getx_example/GetXBindingExample/controller/BindingHomeController.dart';
import 'package:flutter_getx_example/GetXBindingExample/controller/BindingMyController.dart';
import 'package:get/get.dart';

class AllControllerBinding implements Bindings {
  
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BindingMyController>(() => BindingMyController());
    Get.lazyPut<BindingHomeController>(() => BindingHomeController());
  }
}