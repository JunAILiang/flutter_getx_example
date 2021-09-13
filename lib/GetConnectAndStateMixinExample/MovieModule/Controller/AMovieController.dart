import 'package:flutter_getx_example/GetConnectAndStateMixinExample/MovieModule/Providers/AMovieProvider.dart';
import 'package:get/get.dart';

class AMovieController extends GetxController with StateMixin<List<dynamic>> {
  @override
  void onInit() {
    // TODO: implement onInit
    fetchMovie();
    super.onInit();
  }

  void fetchMovie() async {
    try {
      // var movie = await ApiService.fetchMovie();
      // if (movie != null) {
      //   movieList.assignAll(movie);
      // }
      AMovieProvider().fetchMovie().then((resp) => {
        change(resp, status: RxStatus.success())
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });

    } finally {
    }
  }

}