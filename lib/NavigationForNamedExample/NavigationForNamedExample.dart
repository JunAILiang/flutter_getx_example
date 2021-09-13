import 'package:flutter/material.dart';
import 'package:flutter_getx_example/NavigationExample/home.dart';
import 'package:flutter_getx_example/NavigationForNamedExample/My.dart';
import 'package:flutter_getx_example/main.dart';
import 'package:get/get.dart';

class NavigationForNamedExample extends StatelessWidget {
  GlobalKey<NavigatorState> _navKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX NavigationForNamed"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {

                  // 基本使用
                  Get.toNamed("/mya");
                },
                child: Text("跳转到首页"))
          ],
        ),
      ),
    );
  }
}
