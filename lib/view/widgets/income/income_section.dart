import 'package:flutter/material.dart';

import '../../components/custom_card.dart';
import '../../components/custom_divider.dart';
import 'income_details_and_chart_section.dart';
import 'income_header.dart';
import 'see_details_button.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 20),
          IncomeDetailsAndChartSection(),
          CustomDivider(),
          SeeDetailsButton(),
        ],
      ),
    );
  }
}
