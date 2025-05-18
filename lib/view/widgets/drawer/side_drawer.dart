import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/constants.dart';
import '../../components/custom_user_info_list_tile.dart';
import 'bottom_navigation_item_section.dart';
import 'upper_navigation_item_section.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Drawer(
        backgroundColor: AppColors.white,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: CustomUserInfoListTile(
                  userInfo: Constants.usersInfoList[0],
                ),
              ),
            ),
            const UpperNavigationItemsSection(),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Spacer(),
                  BottomNavigationItemsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
