import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';
import '../../components/custom_button.dart';

class SeeDetailsButton extends StatelessWidget {
  const SeeDetailsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: () {},
      buttonText: 'See details',
      textColor: AppColors.primary,
      buttonBackgroundColor: Colors.transparent,
      buttonWidth: double.maxFinite,
      buttonHeight: 20,
    );
  }
}
