import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_fonts.dart';

//CustomTextFormField
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    required this.hintText,
  });
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: AppFonts.styleRegular16(context),
        hintText: hintText,
        filled: true,
        fillColor: AppColors.lightGray,
      ),
      style: AppFonts.styleRegular14(context).copyWith(
        color: AppColors.darkBlueGreen,
      ),
      cursorColor: AppColors.primary,
      cursorHeight: 27,
    );
  }
}
