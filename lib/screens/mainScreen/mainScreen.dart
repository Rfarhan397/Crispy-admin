import 'package:crispy_admin/screens/mainScreen/baseScreen.dart';
import 'package:crispy_admin/screens/settings/editProfile.dart';
import 'package:crispy_admin/screens/settings/settings.dart';
import 'package:crispy_admin/screens/settings/viewProfile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../controller/menu_App_Controller.dart';
import '../../model/res/components/custom_sidebar.dart';
import '../../model/res/components/header.dart';
import '../../model/res/components/responsive.dart';
import '../manageProfile/manageProfileScreen.dart';
import '../manageUsers/manageUsersScreen.dart';
import '../report/reportDetails.dart';
import '../report/reportScreen.dart';
import 'homeScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menuAppController = Provider.of<MenuAppController>(context);
    Widget screen;
    switch (menuAppController.selectedIndex) {
      case 0:
        screen = HomeScreen();
        break;
      case 1:
        screen = ManageUsersScreen();
        break;
        case 2:
        screen = ManageProfileScreen();
        break;
        case 3:
        screen = ReportScreen();
        break;
        case 4:
        screen = SettingsScreen();
        break;
        case 5:
        screen = ViewProfileScreen();
        break;
        case 6:
        screen = EditProfileScreen();
        break;
        case 7:
        screen = ReportDetailsScreen();
        break;

      default:
        screen = HomeScreen();
        break;
    }
    return Scaffold(
      extendBody: true,
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const CustomNavigationBar(),
      body: Stack(
        children: [
          Row(
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: CustomNavigationBar(),
                ),
              Expanded(
                flex: 10,
                child: BaseScreen(child: screen),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
