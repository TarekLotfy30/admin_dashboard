import 'package:flutter/material.dart';

import '../../components/custom_card.dart';
import 'detailed_income_chart.dart';
import 'income_details.dart';
import 'income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IncomeHeader(),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: DetailedIncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}
