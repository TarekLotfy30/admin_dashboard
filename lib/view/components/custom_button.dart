import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_fonts.dart';

//CustomElevatedButton
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonBackgroundColor,
    this.buttonWidth,
    this.buttonHeight,
    this.borderRadius,
    required this.buttonText,
    this.textStyle,
    this.textColor,
  });
  final VoidCallback onPressed;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? buttonBackgroundColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? borderRadius;
  final String buttonText;
  final TextStyle? textStyle;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 12,
        ),
        backgroundColor: buttonBackgroundColor ?? AppColors.primary,
        elevation: 0,
        minimumSize: Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 62),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
        ),
      ),
      child: Text(
        buttonText,
        style: textStyle ??
            AppFonts.styleSemiBold18(context).copyWith(
              color: textColor ?? AppColors.white,
            ),
      ),
    );
  }
}
