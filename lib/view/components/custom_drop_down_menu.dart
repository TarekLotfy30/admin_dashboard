import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/drop_menu_item.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_fonts.dart';
import '../../utils/images/app_images.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    super.key,
    required this.value,
    required this.onChanged,
    required this.items,
  });

  final DropMenuItem value;
  final void Function(DropMenuItem?) onChanged;
  final List<DropdownMenuItem<DropMenuItem>> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.mediumGray,
          width: 0.2,
        ),
      ),
      child: DropdownButton(
        underline: const SizedBox(),
        icon: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: SvgPicture.asset(Assets.arrowDown),
        ),
        value: value,
        style: AppFonts.styleMedium16(context),
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        dropdownColor: AppColors.lightGray,
        onChanged: onChanged,
        items: items,
      ),
    );
  }
}
