import 'package:admin_dashboard/utils/app_colors.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_fonts.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      clipBehavior: Clip.antiAlias,
      color: AppColors.lightGray,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              Assets.imagesAvatar3,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lekan Okeowo',
                  style: AppFonts.styleMedium16(context),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'demo@gmail.com',
                  style: AppFonts.styleRegular12(context).copyWith(
                    color: AppColors.mediumGray,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
