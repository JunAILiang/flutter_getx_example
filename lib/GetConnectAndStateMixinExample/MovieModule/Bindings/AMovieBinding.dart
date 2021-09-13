
import 'package:flutter_getx_example/GetConnectAndStateMixinExample/MovieModule/Controller/AMovieController.dart';
import 'package:get/get.dart';

class AMovieBinding extends Bindings {
  
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AMovieController>(() => AMovieController());
  }

}