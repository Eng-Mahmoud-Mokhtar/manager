import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:manager/Feature/core/utiles/constans.dart';

import '../../../../../../core/colors.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: ColorManager.appBarColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      height: screenHeight / 2.5,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.025, // ديناميكية للحواف الأفقية
          vertical: screenHeight * 0.03,  // ديناميكية للحواف الرأسية
        ),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(show: true),
            titlesData: FlTitlesData(
              leftTitles: SideTitles(
                showTitles: true,
                getTextStyles: (context, value) => TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.03, // حجم النص الديناميكي
                ),
                margin: screenWidth * 0.03,
                reservedSize: screenWidth * 0.06,
                getTitles: (value) {
                  return value.toStringAsFixed(0);
                },
              ),
              rightTitles: SideTitles(showTitles: false),
              bottomTitles: SideTitles(
                showTitles: true,
                getTextStyles: (context, value) => TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.03,
                  overflow: TextOverflow.ellipsis, // لتجنب تجاوز النص
                ),
                margin: screenHeight * 0.02,
                interval: 1, // تأكد من ظهور النصوص بانتظام
                reservedSize: screenHeight * 0.05,
                getTitles: (value) {
                  if (value % 1 == 0) {
                    switch (value.toInt()) {
                      case 0:
                        return 'السبت';
                      case 1:
                        return 'الأحد';
                      case 2:
                        return 'الاثنين';
                      case 3:
                        return 'الثلاثاء';
                      case 4:
                        return 'الأربعاء';
                      case 5:
                        return 'الخميس';
                      case 6:
                        return 'الجمعة';
                      default:
                        return '';
                    }
                  }
                  return '';
                },
              ),
              topTitles: SideTitles(showTitles: false),
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: Colors.white, width: 1),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 80),
                  FlSpot(1, 180),
                  FlSpot(2, 130),
                  FlSpot(3, 200),
                  FlSpot(4, 160),
                ],
                isCurved: true,
                colors: [KprimaryColor, Colors.amber],
                barWidth: screenWidth * 0.005, // عرض الخط الديناميكي
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                  colors: [Colors.green.withOpacity(0.2)],
                ),
              ),
            ],
          ),
          swapAnimationDuration: Duration(milliseconds: 150),
          swapAnimationCurve: Curves.linear,
        ),
      ),
    );
  }
}
