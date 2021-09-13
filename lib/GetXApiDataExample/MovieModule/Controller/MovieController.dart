
import 'package:flutter_getx_example/GetXApiDataExample/ApiModule/ApiService.dart';
import 'package:flutter_getx_example/GetXApiDataExample/MovieModule/Models/MovieModel.dart';
import 'package:get/get.dart';

class MovieController extends GetxController {

  var isLoading = true.obs;
  var movieList = List<MovieModel>.empty().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchMovie();
    super.onInit();
  }

  void fetchMovie() async {
    try {
      isLoading(true);
      var movie = await ApiService.fetchMovie();
      if (movie != null) {
        movieList.assignAll(movie);
      }
    } finally {
      isLoading(false);
    }
  }

}