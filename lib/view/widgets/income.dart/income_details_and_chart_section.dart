import 'package:flutter/material.dart';

import '../../../utils/responsive/size_config.dart';
import 'detailed_income_chart.dart';
import 'income_details.dart';

class IncomeDetailsAndChartSection extends StatelessWidget {
  const IncomeDetailsAndChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1481
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : const Expanded(
            child: Row(
              children: [
                Expanded(child: DetailedIncomeChart()),
                Expanded(flex: 2, child: IncomeDetails()),
              ],
            ),
          );
  }
}
