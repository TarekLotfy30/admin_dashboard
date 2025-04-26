import 'package:flutter/material.dart';

import '../../../components/custom_card.dart';
import '../../../components/custom_divider.dart';
import 'action_buttons.dart';
import 'customer_info_fields.dart';
import 'item_info_fields.dart';
import 'latest_transactions_section.dart';
import 'quick_invoice_header.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransactionsSection(),
          CustomDivider(),
          CustomerInfoFields(),
          SizedBox(height: 24),
          ItemInfoFields(),
          SizedBox(height: 30),
          ActionButtons(),
        ],
      ),
    );
  }
}
