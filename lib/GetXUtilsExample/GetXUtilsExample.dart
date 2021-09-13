import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXUtilsExample extends StatelessWidget {

  var textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Utils"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: textFieldController,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text("判断是否是邮箱"),
                onPressed: () async {
                  if (GetUtils.isEmail(textFieldController.text)) {
                    Get.snackbar("正确", "恭喜你, 完全正确", backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar(
                        "邮箱错误",
                        "请输入正确的邮箱",
                        backgroundColor: Colors.pink
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text("判断是否是手机号"),
                onPressed: () async {
                  if (GetUtils.isPhoneNumber(textFieldController.text)) {

                    Get.snackbar("正确", "恭喜你, 完全正确", backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar(
                        "手机号错误",
                        "请输入正确的手机号",
                        backgroundColor: Colors.pink
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text("判断是否是IPv4"),
                onPressed: () async {
                  if (GetUtils.isIPv4(textFieldController.text)) {

                    Get.snackbar("正确", "恭喜你, 完全正确", backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar(
                        "地址错误",
                        "请输入正确的IPv4地址",
                        backgroundColor: Colors.pink
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
