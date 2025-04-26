import 'package:flutter/material.dart';

import '../../../model/visa_card.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/images/app_images.dart';
import '../../../utils/styles/app_fonts.dart';

class CustomVisaCard extends StatelessWidget {
  const CustomVisaCard({
    super.key,
    required this.visaCardItem,
  });

  final VisaCard visaCardItem;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: ShapeDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Name card'),
              titleTextStyle: AppFonts.styleRegular16(context),
              textColor: AppColors.white,
              subtitleTextStyle: AppFonts.styleSemiBold20(context),
              subtitle: Text(visaCardItem.cardHolderName),
              trailing: const CircleAvatar(
                backgroundColor: AppColors.white,
                child: Icon(Icons.check, color: AppColors.primary),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    visaCardItem.cardNumber,
                    style: AppFonts.styleSemiBold24(context).copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    '${visaCardItem.expiryDate} - ${visaCardItem.cvv}',
                    style: AppFonts.styleRegular16(context).copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
