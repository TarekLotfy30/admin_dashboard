import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../model/expenses_card.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_fonts.dart';
import '../../../../../utils/app_images.dart';
import '../../../components/custom_circle_avatar.dart';

class CustomExpensesCard extends StatefulWidget {
  const CustomExpensesCard({super.key, required this.expensesCard});
  final ExpensesCard expensesCard;

  @override
  State<CustomExpensesCard> createState() => _CustomExpensesCardState();
}

class _CustomExpensesCardState extends State<CustomExpensesCard> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.expensesCard.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isHovered ? AppColors.primary : AppColors.white,
            border: Border.all(
              color: AppColors.mediumGray,
              width: 0.2,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCircleAvatar(
                    backgroundColor: isHovered ? const Color(0xff5FBEF3) : AppColors.lightGray,
                    widget: SvgPicture.asset(
                      widget.expensesCard.iconData,
                      colorFilter: ColorFilter.mode(
                        isHovered ? AppColors.white : AppColors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    Assets.arrowRight,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(height: 34),
              Text(
                widget.expensesCard.title,
                style: isHovered
                    ? AppFonts.styleSemiBold16(context).copyWith(
                        color: AppColors.white,
                      )
                    : AppFonts.styleSemiBold16(context),
              ),
              const SizedBox(height: 8),
              Text(
                widget.expensesCard.date,
                style: isHovered
                    ? AppFonts.styleRegular14(context).copyWith(
                        color: AppColors.white,
                      )
                    : AppFonts.styleRegular14(context),
              ),
              const SizedBox(height: 20),
              Text(
                '\$ ${widget.expensesCard.amount}',
                style: isHovered
                    ? AppFonts.styleSemiBold24(context).copyWith(
                        color: AppColors.white,
                      )
                    : AppFonts.styleSemiBold24(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
