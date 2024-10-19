import 'package:crispy_admin/constant.dart';
import 'package:crispy_admin/model/res/widgets/app_text.dart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OverviewLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 50, // Matches chart interval for correct labeling
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0:
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: const AppTextWidget(
                        text: "0M",
                        fontSize: 18,
                        color: textGreyColor,
                      ),
                    );
                  case 50:
                    return const AppTextWidget(
                      text: "50M",
                      fontSize: 18,
                      color: textGreyColor,
                    );
                  case 100:
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: const AppTextWidget(
                        text: "100M",
                        fontSize: 18,
                        color: textGreyColor,
                      ),
                    );
                  default:
                    return const AppTextWidget(
                      text: "",
                      fontSize: 18,
                      color: textGreyColor,
                    );
                }
              },
              reservedSize: 50,
            ),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1, // Correct interval to show one label per month
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0:
                    return Padding(
                      padding: EdgeInsets.only(left: 2.w),
                      child: const AppTextWidget(
                        text: "JAN",
                        fontSize: 18,
                        color: textGreyColor,
                      ),
                    );
                  case 1:
                    return const AppTextWidget(
                      text: "FEB",
                      fontSize: 18,
                      color: textGreyColor,
                    );
                  case 2:
                    return const AppTextWidget(
                      text: "MAR",
                      fontSize: 18,
                      color: textGreyColor,
                    );
                  case 3:
                    return const AppTextWidget(
                      text: "APR",
                      fontSize: 18,
                      color: textGreyColor,
                    );
                  case 4:
                    return const AppTextWidget(
                      text: "MAY",
                      fontSize: 18,
                      color: textGreyColor,
                    );
                  case 5:
                    return Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: const AppTextWidget(
                        text: "JUNE",
                        fontSize: 18,
                        color: textGreyColor,
                      ),
                    );
                  case 6:
                    return Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: const AppTextWidget(
                        text: "JULY",
                        fontSize: 18,
                        color: textGreyColor,
                      ),
                    );
                  case 7:
                    return Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: const AppTextWidget(
                        text: "AUG",
                        fontSize: 18,
                        color: textGreyColor,
                      ),
                    );
                  case 8:
                    return Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: const AppTextWidget(
                        text: "SEPT",
                        fontSize: 18,
                        color: textGreyColor,
                      ),
                    );
                  case 9:
                    return Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: const AppTextWidget(
                        text: "OCT",
                        fontSize: 18,
                        color: textGreyColor,
                      ),
                    );
                  case 10:
                    return Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: const AppTextWidget(
                        text: "NOV",
                        fontSize: 18,
                        color: textGreyColor,
                      ),
                    );
                  case 11:
                    return Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: const AppTextWidget(
                        text: "DEC",
                        fontSize: 18,
                        color: textGreyColor,
                      ),
                    );
                  default:
                    return const AppTextWidget(
                      text: "",
                      fontSize: 18,
                      color: textGreyColor,
                    );
                }
              },
              reservedSize: 25, // Enough space for the text
            ),
          ),
        ),
        borderData: FlBorderData(show: false),
        minX: 0,
        maxX: 11, // Set maxX to 11 to show all months (indices 0 to 11)
        minY: 0,
        maxY: 100,
        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            color: primaryColor,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: [
                  primaryColor.withOpacity(0.3), // Faded shadow color
                  Colors.transparent, // Fade to transparent
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            spots: const [
              FlSpot(0, 20),
              FlSpot(1, 90),
              FlSpot(2, 60),
              FlSpot(3, 80),
              FlSpot(4, 40),
              FlSpot(5, 70),
              FlSpot(6, 55),
              FlSpot(7, 85),
              FlSpot(8, 45),
              FlSpot(9, 65),
              FlSpot(10, 75),
              FlSpot(11, 95),
            ],
          ),
        ],
      ),
    );
  }
}
