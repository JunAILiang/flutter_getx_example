import 'package:flutter/material.dart';
import 'package:flutter_getx_example/GetXBindingExample/controller/BindingHomeController.dart';
import 'package:get/get.dart';

class BHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX BHome"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              "计数器的值为: ${Get.find<BindingHomeController>().count}",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30
              ),
            )),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Get.find<BindingHomeController>().increment();
                },
                child: Text("点击加1")
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("返回首页")
            ),
          ],
        ),
      ),
    );
  }
}
