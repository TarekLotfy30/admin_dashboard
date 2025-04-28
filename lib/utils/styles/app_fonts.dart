import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../responsive/size_config.dart';

class AppFonts {
  AppFonts._();
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: AppColors.darkBlueGreen,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: AppColors.primary,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: AppColors.darkBlueGreen,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: AppColors.darkBlueGreen,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: AppColors.darkBlueGreen,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: AppColors.mediumGray,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: AppColors.primary,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: AppColors.mediumGray,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  final double scaleFactor = getScaleFactor(context);
  final double responsiveFontSize = fontSize * scaleFactor;
  final double lowerLimit = fontSize * 0.8;
  final double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  final double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 400; // Small screens (e.g., mobile phones)
  } else if (width < SizeConfig.desktop) {
    return width / 700; //(700) // Medium screens (e.g., tablets)
  } else {
    return width / 1920; //(1000) // Large screens (e.g., desktops)
  }
}


//SizeConfig.desktop = 1405
//SizeConfig.desktop = 813

