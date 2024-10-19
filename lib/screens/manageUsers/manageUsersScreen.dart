import 'package:crispy_admin/model/res/constant/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../constant.dart';
import '../../controller/menu_App_Controller.dart';
import '../../model/res/components/app_button_widget.dart';
import '../../model/res/constant/app_assets.dart';
import '../../model/res/widgets/app_text.dart.dart';

class ManageUsersScreen extends StatelessWidget {
  const ManageUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,),
            child: Table(
              columnWidths: const {
                0: FlexColumnWidth(1),  // Image column
                1: FlexColumnWidth(3),  // Name column
                2: FlexColumnWidth(2),  // Date column
                3: FlexColumnWidth(1.5),  // Views column
                4: FlexColumnWidth(1.5),  // Likes column
                5: FlexColumnWidth(1.5),  // Comments column
              },
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: primaryColor,
                        width: 4
                    ),
                  ),
                  children: [
                    _headerCell('Photo'),
                    _headerCell('Name'),
                    _headerCell('Email'),
                    _headerCell('Phone Number'),
                    _headerCell('Total Followers'),
                    _headerCell('Remove'),
                  ],
                ),




              ],
            ),),
      Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0,vertical: 2.h),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.symmetric(vertical: 1.h),
                  child: InkWell(
                    onTap: () {
                      Provider.of<MenuAppController>(context, listen: false)
                          .updateSelectedIndex(2);
                    },
                    child: Table(
                      columnWidths: const {
                        0: FlexColumnWidth(1),  // Image column
                        1: FlexColumnWidth(3),  // Name column
                        2: FlexColumnWidth(2),  // Date column
                        3: FlexColumnWidth(1.5),  // Views column
                        4: FlexColumnWidth(1.5),  // Likes column
                        5: FlexColumnWidth(1.5),  // Comments column
                      },
                      children: [
                        TableRow(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          children: [
                            _imageCell(AppAssets.lady), // Image placeholder
                            _textCell('Spend Time with Freind'),
                            _textCell('info@gmail.com'),
                            _textCell('+92 234 567 890'),
                            _textCell('1.2k'),
                            _svgCell(
                            () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: primaryColor,
                                    title: const Text(
                                      'Remove!',
                                      style: TextStyle(

                                          color: whiteColor
                                      ),
                                    ),
                                    content: const Text(
                                      'Are you sure you want to Remove this User?',
                                      style: TextStyle(
                                          color: whiteColor
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Row(
                                        children: [
                                          AppButtonWidget(
                                            height: 30,
                                            width: 8.w,
                                            radius: 8,
                                            fontSize: 14,
                                            buttonColor: primaryColor,
                                            textColor: whiteColor,
                                            text: "No",
                                            onPressed: () => Get.back(),),
                                          SizedBox(width: 5.w,),
                                          AppButtonWidget(
                                            height: 30,
                                            width: 8.w,
                                            radius: 8,
                                            fontSize: 14,
                                            buttonColor: Colors.white,
                                            textColor: primaryColor,
                                            text: "Yes",
                                            onPressed: () => Get.back(),),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              );
                            }
                            ,AppIcons.delete),
                          ],
                        ),




                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _headerCell(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: AppTextWidget(
        text: text,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _textCell(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: AppTextWidget(
        text: text,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }


  Widget _imageCell(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        child: ClipOval(
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            height: 60,
            width: 60, 
          ),
        ),
      ),
    );
  }

  Widget _svgCell(VoidCallback onTap,String imageUrl) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: SvgPicture.asset(
            imageUrl,
            height: 25,
            width: 25,
          ),
        ),
      ),
    );
  }
}
