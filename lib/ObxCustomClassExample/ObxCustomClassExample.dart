
import 'package:flutter/material.dart';
import 'package:flutter_getx_example/ObxCustomClassExample/Teacher.dart';
import 'package:get/get.dart';

class ObxCustomClassExample extends StatelessWidget {

  var teacher = Teacher();

  // final teacher = Teacher(name: "Jimi", age: 18).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Obx---自定义类"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              "我的名字是 ${teacher.name.value}",
              style: TextStyle(color: Colors.red, fontSize: 30),
            )),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  teacher.name.value = teacher.name.value.toUpperCase();

                  // teacher.update((val) {
                  //   teacher.value.name = teacher.value.name.toString().toUpperCase();
                  // });
                },
                child: Text("转换为大写"))
          ],
        ),
      ),
    );
  }
}
