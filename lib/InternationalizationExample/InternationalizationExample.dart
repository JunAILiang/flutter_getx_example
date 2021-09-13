
import 'package:flutter/material.dart';
import 'package:flutter_getx_example/GetXControllerWorkersExample/WorkersConroller.dart';
import 'package:flutter_getx_example/InternationalizationExample/MessagesCnotroller.dart';
import 'package:get/get.dart';

class InternationalizationExample extends StatelessWidget {

  MessagesController messagesController = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Internationalization"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('hello'.tr, style: TextStyle(color: Colors.pink, fontSize: 30)),
            ElevatedButton(
                onPressed: () => messagesController.changeLanguage('zh', "CN"),
                child: Text("切换到中文")
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () => messagesController.changeLanguage('en', "US"),
                child: Text("切换到英文")
            ),
          ],
        ),
      ),
    );
  }
}
