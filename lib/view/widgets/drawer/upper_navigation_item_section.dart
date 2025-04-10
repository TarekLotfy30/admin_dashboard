import 'package:flutter/material.dart';

import '../../../utils/constants/menu_constants.dart';
import 'custom_list_tile.dart';

class UpperNavigationItemsSection extends StatelessWidget {
  const UpperNavigationItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomListTile(
              item: MenuConstant.mainMenuItems[index],
            ),
          ),
          childCount: MenuConstant.mainMenuItems.length,
        ),
      ),
    );
  }
}
