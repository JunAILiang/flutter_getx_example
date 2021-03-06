import 'package:flutter/material.dart';
import 'package:flutter_getx_example/BottomSheetExample/BottomSheetExample.dart';
import 'package:flutter_getx_example/DependecyInjectionExample/DependecyInjectionExample.dart';
import 'package:flutter_getx_example/DialogExample/DialogExample.dart';
import 'package:flutter_getx_example/GetConnectAndStateMixinExample/GetConnectAndStateMixinExample.dart';
import 'package:flutter_getx_example/GetViewAndGetWidgetExample/GetViewAndGetWidgetExample.dart';
import 'package:flutter_getx_example/GetXApiDataExample/GetXApiDataExample.dart';
import 'package:flutter_getx_example/GetXBindingExample/binding/AllControllerBinding.dart';
import 'package:flutter_getx_example/GetXBindingExample/BHome.dart';
import 'package:flutter_getx_example/GetXBindingExample/binding/BHomeControllerBinding.dart';
import 'package:flutter_getx_example/GetXBindingExample/GetXBindingExample.dart';
import 'package:flutter_getx_example/GetXBindingExample/binding/BMyControllerBinding.dart';
import 'package:flutter_getx_example/GetXControllerExample/GetXControllerExample.dart';
import 'package:flutter_getx_example/GetXControllerExample/MyController.dart';
import 'package:flutter_getx_example/GetXControllerLifecycleMethodsExample/GetXControllerLifecycleMethodExample.dart';
import 'package:flutter_getx_example/GetXControllerUniqueIDExample/GetXControllerUniqueIDExample.dart';
import 'package:flutter_getx_example/GetXControllerWorkersExample/GetXControllerWorkersExample.dart';
import 'package:flutter_getx_example/GetXServiceExample/GetXServiceExample.dart';
import 'package:flutter_getx_example/GetXServiceExample/Service.dart';
import 'package:flutter_getx_example/GetXUtilsExample/GetXUtilsExample.dart';
import 'package:flutter_getx_example/InternationalizationExample/InternationalizationExample.dart';
import 'package:flutter_getx_example/InternationalizationExample/Messages.dart';
import 'package:flutter_getx_example/NavigationExample/Home.dart';
import 'package:flutter_getx_example/NavigationExample/NavigationExample.dart';
import 'package:flutter_getx_example/NavigationForNamedExample/My.dart';
import 'package:flutter_getx_example/NavigationForNamedExample/NavigationForNamedExample.dart';
import 'package:flutter_getx_example/ObxCountExample/ObxCountExample.dart';
import 'package:flutter_getx_example/ObxCustomClassExample/ObxCustomClassExample.dart';
import 'package:flutter_getx_example/SnackbarExample/SnackbarExample.dart';
import 'package:get/get.dart';

// /// ???????????????
// Future<void> main() async {
//   await initServices();
//   runApp(MyApp());
// }
//
// Future<void> initServices() async {
//   print("???????????????");
//   await Get.putAsync(() async => await Service());
//   print("??????????????????");
// }

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   title: "GetX",
    //   home: GetConnectAndStateMixinExample(),
    // );


    /// ?????????????????????
    // return GetMaterialApp(
    //   title: "GetX",
    //   initialRoute: "/",
    //   defaultTransition: Transition.zoom,
    //   getPages: [
    //     GetPage(name: "/", page: () => MyApp()),
    //     GetPage(name: "/home", page: () => Home()),
    //     GetPage(name: "/my", page: () => My(), transition: Transition.rightToLeft)
    //   ],
    //   home: NavigationForNamedExample(),
    // );

    /// ???????????????
    // return GetMaterialApp(
    //   title: "GetX",
    //   translations: Messages(),
    //   locale: Locale('zh', 'CN'), //??????????????????
    //   fallbackLocale: Locale("zh", "CN"), // ???????????????????????????,???????????????
    //   home: InternationalizationExample(),
    // );


    /// GetX Binding
    // return GetMaterialApp(
    //   title: "GetX",
    //   // initialBinding: AllControllerBinding(),
    //   home: GetXBindingExample(),
    //   // ???????????????????????????
    //   // getPages: [
    //   //   GetPage(
    //   //       name: "/bHome",
    //   //       page: () => BHome(),
    //   //       binding: BHomeControllerBinding()
    //   //   ),
    //   // ],
    //
    //   // ???????????????????????????????????????????????????????????????
    //   getPages: [
    //     GetPage(
    //       name: "/bHome",
    //       page: () => BHome(),
    //       binding: BindingsBuilder(() => {
    //         Get.lazyPut<BHomeControllerBinding>(() => BHomeControllerBinding())
    //       })
    //     )
    //   ],
    // );


    return GetMaterialApp(
      title: "GetX",
      home: GetXApiDataExample(),
    );

  }
}
