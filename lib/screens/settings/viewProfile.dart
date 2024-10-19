import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crispy_admin/constant.dart';
import 'package:crispy_admin/model/res/widgets/app_text.dart.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../model/res/constant/app_assets.dart';


class ViewProfileScreen extends StatelessWidget {
  const ViewProfileScreen({super.key});

  // Future<Map<String, dynamic>?> getUserProfile() async {
  //   try {
  //     DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
  //         .collection('admin')
  //         .doc('XcZeK5QjfBpZkrp03pGD')
  //         .get();
  //
  //     if (snapshot.exists) {
  //       return snapshot.data();
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     print('Error fetching user profile: $e');
  //     return null;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 4.h,horizontal: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTextWidget(
            text: "View Profile",
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: primaryColor,
          ),
          SizedBox(height: 3.h),
          Container(
            padding: const EdgeInsets.all(20),
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage:
                  // profileData['imageUrl'] != null
                  //     ? NetworkImage(profileData['imageUrl'])
                  //     : const
                  AssetImage(AppAssets.lady) as ImageProvider,
                ),
                SizedBox(width: 1.w),
                const AppTextWidget(
                  text: 'Mian Uzair',
                  // profileData['firstName'] + " "+ profileData['lastName'] ?? 'N/A',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                 color: primaryColor,
                ),
                const Spacer(),
                const SizedBox(
                  height: 120,
                  child: VerticalDivider(color: primaryColor),
                ),
                SizedBox(width: 1.w),
                SizedBox(
                  width: 20.w,
                  child: Column(
                    children: [
                      const RowText(
                        text1: "Phone:",
                        text2: "+92345678901",
                        textColor: primaryColor,
                        // profileData['phoneNumber'] ?? 'N/A',
                      ),
                      SizedBox(height: 1.h),
                      const RowText(
                        text1: "Email:",
                        text2: "INfo@gmail.com",
                        textColor: primaryColor,
                        // profileData['email'] ?? 'N/A',
                      ),
                      SizedBox(height: 1.h),
                      const RowText(
                        text1: "Address:",
                        text2: "Faisalabad",
                        textColor: textGreyColor,
                        // profileData['address'] ?? 'N/A',
                      ),
                      SizedBox(height: 1.h),
                      const RowText(
                        text1: "Gender:",
                        text2: "Male",
                        textColor: textGreyColor,

                        // text2: profileData['gender'] ?? 'N/A',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowText extends StatelessWidget {
  const RowText({
    super.key,
    required this.text1,
    required this.text2,
    required this.textColor,
  });

  final String text1;
  final String text2;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppTextWidget(
          text: text1,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: textGreyColor,
        ),
        AppTextWidget(
          text: text2,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ],
    );
  }
}
