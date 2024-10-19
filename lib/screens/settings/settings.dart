import 'package:crispy_admin/constant.dart';
import 'package:crispy_admin/controller/menu_App_Controller.dart';
import 'package:crispy_admin/model/res/components/app_button_widget.dart';
import 'package:crispy_admin/model/res/widgets/app_text.dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../model/res/constant/app_icons.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 3.h,horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppTextWidget(
              text: "Setting",
              fontSize: 28, fontWeight: FontWeight.w600,
             color: primaryColor,
            ),
            SizedBox(height: 3.h,),

            SizedBox(height: 2.h,),
            Row(
              children: [
                AppButtonWidget(
                  radius: 10,
                  width: 15.w,
                  height: 6 .h,
                  text: "Edit Profile",
                  prefixIcon:  SvgPicture.asset(AppIcons.editProfile),
                  onPressed: () {

                  },),
                SizedBox(width: 10.w,),
                AppButtonWidget(
                  radius: 10,
                  width: 15.w,
                  height: 6.h,
                  text: "Notification",
                  suffixIcon:  Consumer<MenuAppController>(
                    builder: (context, provider, child) {
                      return CupertinoSwitch(
                        value: provider.isNotification,
                        activeColor: Colors.white,
                        thumbColor: primaryColor,
                        trackColor: Colors.white  ,
                        onChanged: (value) {
                          provider.setNotification(value);
                        },);
                    },),
                  onPressed: () {

                  },),
                // Container(
                //   padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 10),
                //   decoration: BoxDecoration(
                //       color: primaryColor,
                //       borderRadius: BorderRadius.circular(10)
                //   ),
                //   child: Row(
                //     children: [
                //       SvgPicture.asset(AppIcons.bellIcon,height: 20,),
                //       SizedBox(width: 1.w,),
                //       const AppTextWidget(
                //         text: "Notification",
                //         fontSize: 16, fontWeight: FontWeight.w500,
                //         color: Colors.white,
                //       ),
                //       SizedBox(width: 1.w,),
                //       Consumer<MenuAppController>(
                //         builder: (context, provider, child) {
                //           return CupertinoSwitch(
                //             value: provider.isNotification,
                //             activeColor: Colors.white,
                //             thumbColor: primaryColor,
                //             trackColor: Colors.yellow,
                //             onChanged: (value) {
                //               provider.setNotification(value);
                //             },);
                //         },)
                //     ],
                //   ),
                // ),
              ],
            ),
            SizedBox(height: 2.h,),
            AppButtonWidget(
              radius: 10,
              height: 6.h,
              width: 12.w,
              text: "Log Out",
              prefixIcon:  SvgPicture.asset(AppIcons.exit),
              onPressed: () {
                // auth.signOut().whenComplete(() {
                //   Get.offAll(()=>LoginScreen());
                // },);
              },)

          ],
        ),
      ),
    );
  }
}
