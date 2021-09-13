import 'package:flutter/material.dart';
import 'package:flutter_getx_example/BottomSheetExample/BottomSheetExample.dart';
import 'package:flutter_getx_example/DependecyInjectionExample/DependecyInjectionExample.dart';
import 'package:flutter_getx_example/DialogExample/DialogExample.dart';
import 'package:flutter_getx_example/GetConnectAndStateMixinExample/RoutesModule/AppPages.dart';
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

// /// 初始化服务
// Future<void> main() async {
//   await initServices();
//   runApp(MyApp());
// }
//
// Future<void> initServices() async {
//   print("初始化服务");
//   await Get.putAsync(() async => await Service());
//   print("所有服务启动");
// }

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX",
      home: GetViewAndGetWidgetExample(),
    );


    /// 命名式路由导航
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

    /// 国际化配置
    // return GetMaterialApp(
    //   title: "GetX",
    //   translations: Messages(),
    //   locale: Locale('zh', 'CN'), //设置默认语言
    //   fallbackLocale: Locale("zh", "CN"), // 在配置错误的情况下,使用的语言
    //   home: InternationalizationExample(),
    // );


    /// GetX Binding
    // return GetMaterialApp(
    //   title: "GetX",
    //   // initialBinding: AllControllerBinding(),
    //   home: GetXBindingExample(),
    //   // 如果绑定在路由上面
    //   // getPages: [
    //   //   GetPage(
    //   //       name: "/bHome",
    //   //       page: () => BHome(),
    //   //       binding: BHomeControllerBinding()
    //   //   ),
    //   // ],
    //
    //   // 绑定构建器（如果我们不想使用单独的绑定类）
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

    // /// GetConnectAndStateMixin
    // return GetMaterialApp(
    //     title: "GetX",
    //     // theme: ThemeData.dark(),
    //   initialRoute: AppPages.INIT,
    //   getPages: AppPages.routes,
    // );

  }
}
