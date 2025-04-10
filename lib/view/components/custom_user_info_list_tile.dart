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
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      color: AppColors.lightGray,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      child: ListTile(
        leading: CustomCircleAvatar(
          imagePath: userInfo.photoUrl,
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          userInfo.name,
          style: AppFonts.styleSemiBold16(context),
        ),
        subtitle: Text(
          userInfo.email,
          style: AppFonts.styleRegular12(context),
        ),
      ),
    );
  }
}
