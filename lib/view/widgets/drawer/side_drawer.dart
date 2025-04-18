import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/users_info.dart';
import '../../components/custom_user_info_list_tile.dart';
import 'bottom_navigation_item_section.dart';
import 'upper_navigation_item_section.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: CustomUserInfoListTile(
                userInfo: UsersInfo.usersInfoList[0],
              ),
            ),
          ),
          const UpperNavigationItemsSection(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                BottomNavigationItemsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
