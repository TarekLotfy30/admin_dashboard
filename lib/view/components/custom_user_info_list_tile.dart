import 'package:flutter/material.dart';

import '../../model/user_info.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_fonts.dart';
import 'custom_circle_avatar.dart';

class CustomUserInfoListTile extends StatelessWidget {
  const CustomUserInfoListTile({super.key, required this.userInfo});

  final UserInfo userInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ListTile(
        tileColor: AppColors.lightGray,
        titleTextStyle: AppFonts.styleMedium16(context),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        subtitleTextStyle: AppFonts.styleRegular12(context),
        selectedTileColor: AppColors.mediumGray,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        leading: CustomCircleAvatar(
          imagePath: userInfo.photoUrl,
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          userInfo.name,
          softWrap: true,
          //overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          userInfo.email, softWrap: true,
          // overflow: TextOverflow.ellipsis,
        ),
        horizontalTitleGap: 10,
      ),
    );
  }
}
