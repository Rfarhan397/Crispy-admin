import 'package:crispy_admin/constant.dart';
import 'package:crispy_admin/model/res/constant/app_assets.dart';
import 'package:crispy_admin/model/res/widgets/app_text.dart.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MostPopularPostWidget extends StatelessWidget {
  const MostPopularPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 8.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AppTextWidget(text:
                'Most Popular Post',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange, // Match the header color
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(2),  // Image column
                  1: FlexColumnWidth(3),  // Name column
                  2: FlexColumnWidth(2),  // Date column
                  3: FlexColumnWidth(1.5),  // Views column
                  4: FlexColumnWidth(1.5),  // Likes column
                  5: FlexColumnWidth(1.5),  // Comments column
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(
                        color: greyColor,
                      ))
                    ),
                    children: [
                      _headerCell('Image'),
                      _headerCell('Name'),
                      _headerCell('Date'),
                      _headerCell('Views'),
                      _headerCell('Likes'),
                      _headerCell('Comments'),
                    ],
                  ),

                  TableRow(
                    children: [
                      _imageCell(AppAssets.lady), // Image placeholder
                      _textCell('Spend Time with Freind'),
                      _textCell('March 29, 2024'),
                      _textCell('362.46'),
                      _textCell('22.456'),
                      _textCell('1.456'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  Widget _headerCell(String text) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 1.h),
      child: AppTextWidget(text:
      text,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
      ),
    );
  }

  Widget _textCell(String text) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 2.h),
      child: AppTextWidget(text:
      text,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.black,
      ),
    );
  }

  Widget _imageCell(String imageUrl) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal: 5.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          imageUrl,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}