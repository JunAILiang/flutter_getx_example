import 'package:get/get.dart';

class MyLifecycleController extends GetxController {
 
  var count = 0;
  
  void increment() async {
    await Future.delayed(Duration(milliseconds: 3000));
    count++;
    update();
  }

  void cleanTask() {
    print("清除了任务");
  }

  @override
  void onInit() {
    // TODO: implement onInit
    print("初始化");
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    print("加载完成");
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print("控制器被释放");
    super.onClose();
  }
  
}