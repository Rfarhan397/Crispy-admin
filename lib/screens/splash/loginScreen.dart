import 'package:crispy_admin/constant.dart';
import 'package:crispy_admin/model/res/components/app_button_widget.dart';
import 'package:crispy_admin/model/res/constant/app_assets.dart';
import 'package:crispy_admin/model/res/constant/app_icons.dart';
import 'package:crispy_admin/model/res/routes/routes_name.dart';
import 'package:crispy_admin/model/res/widgets/app_text.dart.dart';
import 'package:crispy_admin/model/res/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Orange background with image
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.loginImage), // Replace with your asset path
                fit: BoxFit.cover,

              ),
            ),
          ),
          Positioned(
            top: 30.h, // Start of the curve
            child: Container(
              height: 70.h, // Remaining screen height
              width: 40.w,
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextWidget(
                    text:
                    "LOGIN",
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                  ),
                  SizedBox(height: 4.h),

                  AppTextWidget(
                    text:
                    "Email",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  SizedBox(height: 1.h),
                  AppTextField(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(AppIcons.email,),
                    ),
                    fillColor: Colors.transparent,
                      borderSides: true,
                      bdColor: Colors.black,
                      focusColor: Colors.black,
                      focusBdColor: Colors.black,
                      enableBorderColor:Colors.black,
                      radius: 8,
                      hintText: 'Email'),

                  SizedBox(height: 4.h),

                  // Password field
                  AppTextWidget(
                    text:
                    "Password",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  SizedBox(height: 1.h),
                  AppTextField(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AppIcons.password),
                      ),
                      fillColor: Colors.transparent,
                      borderSides: true,
                      bdColor: Colors.black,
                      focusColor: Colors.black,
                      focusBdColor: Colors.black,
                      enableBorderColor:Colors.black,
                      radius: 8,
                      hintText: 'Email'),

                  SizedBox(height: 6.h),
                AppButtonWidget(
                    alignment: Alignment.centerRight,
                    radius: 8,
                    onPressed: () {
                      Get.toNamed(RoutesName.mainScreen);
                }, text: 'Login')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Clipper for curved design
