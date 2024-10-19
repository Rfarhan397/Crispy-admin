
import 'package:crispy_admin/model/res/routes/routes_name.dart';
import 'package:crispy_admin/screens/mainScreen/homeScreen.dart';
import 'package:crispy_admin/screens/mainScreen/mainScreen.dart';
import 'package:crispy_admin/screens/settings/settings.dart';

import 'package:get/get.dart';
import '../../../screens/report/reportDetails.dart';
import '../../../screens/splash/loginScreen.dart';
import '../../../screens/splash/splashScreen.dart';



class Routes {
  static final routes = [
    GetPage(name: RoutesName.splashScreen, page: () => SplashScreen()),
    GetPage(name: RoutesName.loginScreen, page: () => LoginScreen()),
    GetPage(name: RoutesName.mainScreen, page: () => MainScreen()),
    GetPage(name: RoutesName.homeScreen, page: () => HomeScreen()),
    GetPage(name: RoutesName.settings, page: () => SettingsScreen()),
    GetPage(name: RoutesName.reportDetails, page: () => ReportDetailsScreen()),


  ];
}
