import 'package:flutter/material.dart';
import 'package:flutter_getx_example/GetXApiDataExample/MovieModule/Controller/MovieController.dart';
import 'package:get/get.dart';

class MovieListView extends StatelessWidget {
  
  final MovieController movieController = Get.put(MovieController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
      ),
      body: Obx(() {
        if (movieController.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: movieController.movieList.length,
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
                            movieController.movieList[index].itemCover,
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
                              movieController.movieList[index].author,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16
                              ),
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
          );
        }
      }),
    );
  }
}
