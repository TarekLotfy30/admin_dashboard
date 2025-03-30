import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'build_bottom_navigation_item.dart';
import 'build_navigation_item.dart';
import 'user_info_list_tile.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserInfoListTile(),
          BuildNavigationItem(),
          Spacer(),
          BuildBottomNavigationItem(),
        ],
      ),
    );
  }
}
