
import 'package:flutter/material.dart';

import '../../../../utils/styles/app_fonts.dart';
import '../../../components/custom_text_field.dart';

class CustomerInfoFields extends StatelessWidget {
  const CustomerInfoFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Customer name',
                style: AppFonts.styleMedium16(context),
              ),
              const SizedBox(height: 16),
              const CustomTextField(
                hintText: 'Type customer name',
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Customer Email',
                style: AppFonts.styleMedium16(context),
              ),
              const SizedBox(height: 12),
              const CustomTextField(
                hintText: 'Type customer email',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
