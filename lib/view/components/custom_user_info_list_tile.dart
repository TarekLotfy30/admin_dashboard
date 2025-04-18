import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/user_info.dart';
import '../../utils/colors/app_colors.dart';

import '../../utils/styles/app_fonts.dart';
import 'custom_circle_avatar.dart';

class CustomUserInfoListTile extends StatelessWidget {
  const CustomUserInfoListTile({super.key, required this.userInfo});

  final UserInfo userInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.lightGray,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      child: ListTile(
        leading: CustomCircleAvatar(
          backgroundColor: Colors.transparent,
          widget: SvgPicture.asset(userInfo.photoUrl),
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
