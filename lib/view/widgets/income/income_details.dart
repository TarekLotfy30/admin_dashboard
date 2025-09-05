import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Constants.itemDetails
          .map((e) => ItemDetails(itemDetailsModel: e))
          .toList(),
    );
  }
}
