
import 'package:crispy_admin/model/res/routes/routes_name.dart';

import 'package:get/get.dart';
import '../../../screens/splash/loginScreen.dart';
import '../../../screens/splash/splashScreen.dart';



class Routes {
  static final routes = [
    GetPage(name: RoutesName.splashScreen, page: () => SplashScreen()),
    GetPage(name: RoutesName.loginScreen, page: () => LoginScreen()),


  ];
}
