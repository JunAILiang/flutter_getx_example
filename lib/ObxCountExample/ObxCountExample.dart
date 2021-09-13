import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObxCountExample extends StatelessWidget {

  // 第一种 使用 Rx{Type}
  // final xx = RxString('');
  // final xx = RxBool(false);
  final xx = RxInt(0);
  // final xx = RxDouble(0.0);
  // final xx = RxList<String>([]);
  // final xx = RxMap<String, int>({});

  // 第二种是使用 Rx，规定泛型 Rx<Type>。

  // final name = Rx<String>('');
  // final isLogged = Rx<Bool>(false);
  final count1 = Rx<int>(0);
  // final balance = Rx<Double>(0.0);
  // final number = Rx<Num>(0)
  // final items = Rx<List<String>>([]);
  // final myMap = Rx<Map<String, int>>({});
  // 自定义类 - 可以是任何类
  // final user = Rx<User>();

  // 第三种更实用、更简单、更可取的方法，只需添加 .obs 作为value的属性。
  // final name = ''.obs;
  // final isLogged = false.obs;
  // final count = 0.obs;
  // final balance = 0.0.obs;
  // final number = 0.obs;
  // final items = <String>[].obs;
  // final myMap = <String, int>{}.obs;
  // 自定义类 - 可以是任何类
  // final user = User().obs;

  // RxInt count = RxInt(0);
  // var count = Rx<double>(0);
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Obx---计数器"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              "count的值为: $count",
              style: TextStyle(color: Colors.red, fontSize: 30),
            )),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: Text("点我加1"))
          ],
        ),
      ),
    );
  }
}
