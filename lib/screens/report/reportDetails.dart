import 'package:crispy_admin/constant.dart';
import 'package:crispy_admin/main.dart';
import 'package:crispy_admin/model/res/constant/app_assets.dart';
import 'package:crispy_admin/model/res/widgets/app_text.dart.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ReportDetailsScreen extends StatelessWidget {
  const ReportDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 4.h,horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical:5.h,horizontal:5.w),
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),

              ),
              child:  Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(AppAssets.lady),
                      ),
                      SizedBox(width: 2.w,),
                      AppTextWidget(text: 'Mian Uzair',fontSize: 22,color: primaryColor,),
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Divider(
                    color: primaryColor,
                    thickness: 1,
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildRowText('Phone','(+212) 06 11 45 56 67'),
                      buildRowText('Address:','Anywhere'),

                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      buildRowText('Email','info@gmail.com'),

                      buildRowText('Gender:','Male'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            AppTextWidget(text: 'Reason to Report',color: primaryColor,fontSize: 22,),
            SizedBox(height: 2.h,),
            Container(
              padding: EdgeInsets.symmetric(vertical:2.h,horizontal:2.w),
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),),
              child: AppTextWidget(textAlign: TextAlign.start,fontSize: 14,text: 'At Crispytalk, we are committed to protecting your privacy and ensuring the security of your personal data. This Privacy Policy explains how we collect, use, and store your information when you use our app ("App"). By using Crispytalk, you consent to the practices described in this policy. We collect personal data such as your name, email address, phone number, and any other information you provide when you create an account. Additionally, we may collect non-personal data such as your IP address, device information, and usage data. '
                  'We use this information to provide, improve, and personalize the App,'
                  ' as well as for analytics and security purposes.'),
            )
          ],
        ),
      ),
    );
  }

  Row buildRowText(title,des) {
    return Row(
                      children: [
                        AppTextWidget(text: title,fontSize: 18,),
                        SizedBox(width: 2.w,),
                        AppTextWidget(text: des,color: primaryColor,fontSize: 18,),
                      ],
                    );
  }
}
