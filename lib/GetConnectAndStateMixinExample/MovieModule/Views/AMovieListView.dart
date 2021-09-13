import 'package:flutter/material.dart';
import 'package:flutter_getx_example/GetConnectAndStateMixinExample/MovieModule/Controller/AMovieController.dart';
import 'package:get/get.dart';

class AMovieListView extends GetView<AMovieController> {
  // final AMovieController movieController = Get.put(AMovieController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
      ),
      body: controller.obx(
        (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(
                          data[index].itemCover,
                          width: 150,
                          height: 100,
                          fit: BoxFit.fill,
                          // color: Colors.orange,
                          // colorBlendMode: BlendMode.color,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index].author,
                            style:
                                TextStyle(color: Colors.black45, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey.shade300,
                  height: 2,
                )
              ],
            );
          },
        ),
        onError: (error) => Center(
          child: Text("error"),
        ),
      ),
      // body: Obx(() {
      //   if (movieController.isLoading.value) {
      //     return Center(
      //       child: CircularProgressIndicator(),
      //     );
      //   } else {
      //     return ListView.builder(
      //       itemCount: movieController.movieList.length,
      //       itemBuilder: (context, index) {
      //         return Column(
      //           children: [
      //             Row(
      //               children: [
      //                 Container(
      //                   width: 100,
      //                   height: 120,
      //                   margin: EdgeInsets.all(10),
      //                   child: ClipRRect(
      //                     borderRadius: BorderRadius.circular(6),
      //                     child: Image.network(
      //                       movieController.movieList[index].itemCover,
      //                       width: 150,
      //                       height: 100,
      //                       fit: BoxFit.fill,
      //                       // color: Colors.orange,
      //                       // colorBlendMode: BlendMode.color,
      //                     ),
      //                   ),
      //                 ),
      //                 Flexible(
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         movieController.movieList[index].author,
      //                         style: TextStyle(
      //                           color: Colors.black45,
      //                           fontSize: 16
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Container(
      //               color: Colors.grey.shade300,
      //               height: 2,
      //             )
      //           ],
      //         );
      //       },
      //     );
      //   }
      // }),
    );
  }
}
