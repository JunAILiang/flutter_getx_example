import 'package:flutter/material.dart';
import 'package:get/get.dart';

class My extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX BottomSheet"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "我是首页",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/home");
                },
                child: Text("跳转到下一个页面")
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  // 返回不带参数
                  Get.back();

                  // 返回带参数
                  // Get.back(result: "我是首页,赏点数据给你");
                },
                child: Text("返回首页")
            ),
          ],
        ),
      ),
    );
  }
}
