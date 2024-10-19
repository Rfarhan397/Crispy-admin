import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constant.dart';
import '../constant/app_assets.dart';
import '../constant/app_colors.dart';
import '../widgets/app_text.dart.dart';
import 'drawerTile.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.zero, // Remove top-right corner rounding
          bottomRight: Radius.circular(0), // Ensure bottom-right is also not rounded
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.splashImage,
                  height: 200,
                  width: 200,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 1.w),
                  child: Row(
                    children: [
                       CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(AppAssets.lady),
                        ),
                     SizedBox(width: 1.w,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         AppTextWidget( textAlign: TextAlign.start,text: 'Mian Uzair',color: Colors.white,fontSize: 22,),
                         AppTextWidget(textAlign: TextAlign.start,text: 'Info@gmail.com',color: Colors.white,fontSize: 18,),
                       ],
                     )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 2.h,),
            const DrawerListTile(
              index: 0,
              screenIndex: 0,
              title: "Dashboard",
              svgSrc: 'assets/icons/dashboard.svg',
            ),
            const DrawerListTile(
              index: 1,
              screenIndex: 1,
              title: "Manage Users",
              svgSrc: "assets/icons/manageUsers.svg",
            ),
            const DrawerListTile(
              index: 2,
              screenIndex: 2,
              title: "Manage Profiles",
              svgSrc: "assets/icons/manageProfile.svg",
            ),
            const DrawerListTile(
              index: 3,
              screenIndex: 3,
              title: "Report & Analytics",
              svgSrc: "assets/icons/report.svg",
            ),
            SizedBox(
              height: defaultDrawerHeadHeight,
            ),
          ],
        ),
      ),
    );
  }
}
