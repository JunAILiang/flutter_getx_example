import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogExample extends StatelessWidget {
  GlobalKey<NavigatorState> _navKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Dialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    // 基本属性设置
                    title: "是否上车?",
                    titleStyle: TextStyle(color: Colors.pink, fontSize: 30),
                    middleText: "大家坐好,准备开车了",
                    middleTextStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 20),
                    // titlePadding: EdgeInsets.all(0),
                    //
                    // 自定义内容区域设置
                    // content: Row(
                    //   children: [
                    //     CircularProgressIndicator(),
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Expanded(child: Text("大家坐好,准备开车了"))
                    //   ],
                    // ),
                    // contentPadding: EdgeInsets.all(100),
                    //
                    // 背景颜色,圆角设置
                    // backgroundColor: Colors.greenAccent,
                    // radius: 50,
                    //
                    // 按钮文字/样式设置
                    // textConfirm: "确认",
                    // confirmTextColor: Colors.white,
                    // textCancel: "取消",
                    // cancelTextColor: Colors.white,
                    // onConfirm: () {
                    //   print("确认按钮被点击");
                    // },
                    // onCancel: () {
                    //   print("取消按钮被点击");
                    // },
                    // buttonColor: Colors.green,
                    //
                    // // 自定义确认和取消按钮
                    // confirm: TextButton(onPressed: () {}, child: Text("确定")),
                    // cancel: TextButton(onPressed: () {}, child: Text("取消")),
                    // actions: [
                    //   ElevatedButton(
                    //       onPressed: () {
                    //         Get.back();
                    //       },
                    //       child: Text("上车啦")),
                    //   ElevatedButton(
                    //       onPressed: () {
                    //         Get.back();
                    //       },
                    //       child: Text("下车啦")),
                    // ],

                    // 是否可通过背景关闭dialog
                    // barrierDismissible: false

                    onWillPop: () async {
                      print("要退出页面了");
                      return true;
                    },
                  );
                },
                child: Text("显示 Dialog"))
          ],
        ),
      ),
    );
  }
}
