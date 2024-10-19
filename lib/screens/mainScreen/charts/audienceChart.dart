import 'package:crispy_admin/constant.dart';
import 'package:crispy_admin/model/res/widgets/app_text.dart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AudienceChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularPercentIndicator(
        radius: 100.0, // Size of the outer circle
        lineWidth: 15.0, // Thickness of the outer circle line
        percent: 0.503, // The percentage for the first part (Women 50.8%)
        animation: true,
        center: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(0, 5), // Vertical shadow position
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AppTextWidget(text:
                'Total\nAudience',
                textAlign: TextAlign.center,
                  color: Colors.grey,
                  fontSize: 16,

              ),
              SizedBox(height: 5),
              AppTextWidget(text:
                '2.34 M',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
              ),
            ],
          ),
        ),
        backgroundColor: primaryColor, // Background for men (45.3%)
        progressColor: Color(0xffE4F510), // Progress for women (50.8%)
        circularStrokeCap: CircularStrokeCap.round, // Rounded ends
      ),
    );
  }
}
