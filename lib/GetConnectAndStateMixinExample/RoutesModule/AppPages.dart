import 'package:flutter_getx_example/GetConnectAndStateMixinExample/MovieModule/Bindings/AMovieBinding.dart';
import 'package:flutter_getx_example/GetConnectAndStateMixinExample/MovieModule/Views/AMovieListView.dart';
import 'package:get/get.dart';

part 'AppRoutes.dart';

class AppPages {
  static const INIT = Routes.MOVIE;

  static final routes = [
    GetPage(name: _Paths.MOVIE, page: () => AMovieListView(), binding: AMovieBinding()),
  ];
}