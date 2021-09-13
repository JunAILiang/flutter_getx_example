import 'package:flutter/material.dart';
import 'package:flutter_getx_example/GetViewAndGetWidgetExample/GetViewCountController.dart';
import 'package:get/get.dart';


// 如果我们有单个控制器作为依赖项，那么我们可以使用 getview
// 而不是 statelesswidget 并避免编写 get.find

// 它与 getview 相似，但有一个区别，它给出了相同的实例
// get.find 每次。 当与 get.create 结合使用时它变得非常有用


class GetViewAndGetWidgetExample extends GetWidget<GetViewCountController> {

  @override
  Widget build(BuildContext context) {

    // Get.put(GetViewCountController());
    Get.create(() => GetViewCountController());

    return Scaffold(
      appBar: AppBar(
        title: Text("GetX GetView"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              "count的值为:  ${controller?.count}",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30
              ),
            )),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: Text("点我加1"))
          ],
        ),
      ),
    );
  }

}