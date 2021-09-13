import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarExample extends StatefulWidget {
  @override
  _SnackbarExampleState createState() => _SnackbarExampleState();
}

class _SnackbarExampleState extends State<SnackbarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Snackbar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Snackbar 标题", "欢迎使用Snackbar",
                      colorText: Colors.pink,
                      // duration: Duration(milliseconds: 10000),
                      // instantInit: false,
                    // snackPosition: SnackPosition.BOTTOM,
                      // titleText: Text("自定义组件, Jimi"),
                      // messageText: Text("自定义组件, Jimi真帅"),
                      // icon: Icon(Icons.ac_unit),
                      // shouldIconPulse: false,
                      // maxWidth: 300,
                      // margin: EdgeInsets.all(0),
                      // padding: EdgeInsets.all(0),
                      // borderRadius: 50,
                      // borderColor: Colors.greenAccent,
                      // borderWidth: 10,
                      // backgroundColor: Colors.orangeAccent.withOpacity(0.2),
                    // leftBarIndicatorColor: Colors.red,
                    // boxShadows: [
                    //   BoxShadow(
                    //     color: Colors.blue,
                    //     offset: Offset(10, 20),
                    //     spreadRadius: 20,
                    //     blurRadius: 10
                    //   ),
                    // ],
                    // backgroundGradient: LinearGradient(colors: [
                    //   Colors.red,
                    //   Colors.black
                    // ]),
                    // mainButton: TextButton(
                    //   onPressed: () {},
                    //   child: Text("确认", style: TextStyle(
                    //     color: Colors.greenAccent
                    //   ),),
                    //   style: ButtonStyle(
                    //
                    //   )
                    // ),
                    // onTap: (a) {
                    //   print(a);
                    //   print("点击了");
                    // },
                    // isDismissible: false,
                    // showProgressIndicator: true,
                    // progressIndicatorBackgroundColor: Colors.pink,
                    // progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.red)
                    //   dismissDirection:SnackDismissDirection.HORIZONTAL,
                    snackStyle:SnackStyle.FLOATING,
                    // forwardAnimationCurve: Curves.bounceInOut,
                    // reverseAnimationCurve: Curves.easeInOutBack,
                    // animationDuration: Duration(milliseconds: 2000),
                    // barBlur: 1,
                    // overlayBlur: 10,
                    // snackbarStatus: (status) {
                    //   print(status);
                    // },
                    // overlayColor: Colors.purple.withOpacity(0.2),
                    userInputForm: Form(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(),
                          )
                        ],
                      ),
                    )
                  );
                },
                child: Text("显示 Snackbar"))
          ],
        ),
      ),
    );
  }
}
