import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_style.dart';
import 'legend_item.dart';

class CategoryChart extends StatelessWidget {
  const CategoryChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PieChart(
                PieChartData(
                  sectionsSpace: 5,
                  centerSpaceRadius: 60,
                  sections: [
                    PieChartSectionData(
                      value: 40,
                      color: Color(0xff3A5F7D),
                      radius: 20,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      value: 30,
                      color: Color(0xff7FAAC9),
                      radius: 20,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      value: 20,
                      color: Color(0xff9BC7E5),
                      radius: 20,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      value: 10,
                      color: Color(0xffDCE3EA),
                      radius: 20,
                      showTitle: false,
                    ),
                  ],
                ),
              ),

              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "100%",
                    style: AppStyles.styleBold18(context),
                  ),
                  Text(
                    "TOTAL",
                    style: AppStyles.styleMedium10(context)
                  ),
                ],
              )
            ],
          ),
        ),

        SizedBox(height: 20),
        Wrap(
          spacing: 30,
          runSpacing: 10,
          children: const [
            LegendItem("Electronics (40%)", Color(0xff3A5F7D)),
            LegendItem("Fashion (30%)", Color(0xff7FAAC9)),
            LegendItem("Home & Decor (20%)", Color(0xff9BC7E5)),
            LegendItem("Others (10%)", Color(0xffDCE3EA)),
          ],
        )
      ],
    );
  }
}