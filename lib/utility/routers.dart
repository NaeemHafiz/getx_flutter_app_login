import 'package:get/get.dart';
import 'file:///F:/Projects/Mobile/Flutter/getx_flutter_app_login/lib/views/home_view.dart';
import 'file:///F:/Projects/Mobile/Flutter/getx_flutter_app_login/lib/views/login_view.dart';

class Routers {
  static final router1 = [
    GetPage(
      name: '/loginView',
      page: () => LoginView(),
    ),
    GetPage(
      name: '/homeView',
      page: () => HomeView(),
    ),
  ];
}