
import 'package:flutter/material.dart';
import 'package:flutter_getx_example/GetXServiceExample/Service.dart';
import 'package:get/get.dart';

class GetXServiceExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Service"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.find<Service>().getCounter();
                },
                child: Text("点我加1"))
          ],
        ),
      ),
    );
  }
}
