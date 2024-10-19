import 'package:crispy_admin/constant.dart';
import 'package:crispy_admin/model/res/widgets/app_text.dart.dart';
import 'package:crispy_admin/screens/mainScreen/popular/mostPopular.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'charts/audienceChart.dart';
import 'charts/gridViewChart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 90.w,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    buildCard(
                        'Total Users',
                        '30,654',
                        Icons.arrow_upward,
                        Colors.green,
                        Colors.green.shade100,
                        '+12.05%',
                        Colors.green),
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 2.w),
                        child: const VerticalDivider(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    buildCard(
                        'Total Likes',
                        '30,654',
                        Icons.arrow_downward,
                        Colors.brown,
                        Colors.brown.shade100,
                        '-99.99%',
                        Colors.brown),
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 2.w),
                        child: const VerticalDivider(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    buildCard(
                        'Total Videos',
                        '30,654',
                        Icons.arrow_upward,
                        Colors.green,
                        Colors.green.shade100,
                        '+12.05%',
                        Colors.green),
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 2.w),
                        child: const VerticalDivider(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    buildCard(
                        'Total Comments',
                        '30,654',
                        Icons.arrow_downward,
                        Colors.brown,
                        Colors.brown.shade100,
                        '-99.99%',
                        Colors.brown),

                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppTextWidget(text: "OverView",fontSize: 20, fontWeight: FontWeight.bold, color: primaryColor),
                                Padding(
                                  padding:  EdgeInsets.only(right: 2.w),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                      ),
                                      SizedBox(width: 0.5.w,),

                                      AppTextWidget(text: "Accounts",fontSize: 18, fontWeight: FontWeight.w500, color: textGreyColor),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2.h),
                            SizedBox(
                              height: 310,
                              child: OverviewLineChart(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Expanded(
                    flex: 1,
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppTextWidget(text: "Reached Audience", fontSize: 20, fontWeight: FontWeight.bold,color: primaryColor,),
                            SizedBox(height: 16),
                            SizedBox(
                              height: 250,
                              child: AudienceChart(),
                            ),
                            SizedBox(height: 2.h),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 2.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Indicator(color: Colors.orange, text: 'Men', percentage: 45.3),
                                  SizedBox(width: 16),
                                  Indicator(color: Color(0xffE4F510), text: 'Women', percentage: 50.8),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              MostPopularPostWidget()
            ],
          ),
        ),
      ),
    );
  }

  Container buildCard(title, description, icon, Color iconColor, iconBgColor,
      percent, percentColor) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 1.5.w),
      height: 200,
      width: 16.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextWidget(
            text: title,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 1.h),
          AppTextWidget(
            text: description,
            fontWeight: FontWeight.w600,
            fontSize: 26,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 18,
                ),
              ),
              SizedBox(width: 0.5.w),
              AppTextWidget(
                text: percent,
                textAlign: TextAlign.start,
                color: percentColor,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              SizedBox(width: 0.2.w),
              const AppTextWidget(
                text: ' than last week',
                color: greyColor,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final double percentage;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextWidget(text: '${percentage.toStringAsFixed(1)}%',fontSize: 16,fontWeight: FontWeight.w600,),
        SizedBox(height: 2),
        Row(
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            SizedBox(width: 0.4.w,),
            AppTextWidget(text: text,fontSize: 16,color: textGreyColor,fontWeight: FontWeight.w500,),

          ],
        ),
      ],
    );
  }
}