import 'package:flutter/material.dart';
import 'package:flutter_getx_example/NavigationExample/home.dart';
import 'package:get/get.dart';

class NavigationExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {

                  // 路由跳转
                  // Get.to(Home());

                  // 基本使用
                  // Get.to(
                  //   Home(),
                  //   fullscreenDialog: true,
                  //   transition: Transition.upToDown,
                  //   duration: Duration(milliseconds: 2000),
                  //   curve: Curves.bounceInOut
                  // );

                  // 传递参数给下一个页面
                  // Get.to(() =>Home(),
                  //   arguments: "Hello Jimi"
                  // );

                  // 接收上一个页面的数据
                  var data = await Get.to(Home(), arguments: "Hello Jimi");
                  print("我接收到了数据 $data");
                },
                child: Text("跳转到首页"))
          ],
        ),
      ),
    );
  }
}
