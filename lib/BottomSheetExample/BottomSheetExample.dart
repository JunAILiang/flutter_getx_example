import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetExample extends StatelessWidget {
  GlobalKey<NavigatorState> _navKey = GlobalKey();

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
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      height: 1000,
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text("白天模式"),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text("黑夜模式"),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          )
                        ],
                      ),
                    ),


                    // barrierColor: Colors.purple.shade100,
                    backgroundColor: Colors.green,
                    // elevation: 10,
                    // isDismissible: true,
                    // enableDrag: false,


                    // 是否全屏弹出
                    // isScrollControlled: false,


                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    //   side: BorderSide(
                    //     color: Colors.white,
                    //     style: BorderStyle.solid,
                    //     width: 2.0
                    //   )
                    // ),

                    enterBottomSheetDuration: Duration(milliseconds: 1000),
                    exitBottomSheetDuration: Duration(milliseconds: 3000)

                  );
                },
                child: Text("Bottom Sheet"))
          ],
        ),
      ),
    );
  }
}
