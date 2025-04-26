import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'custom_list_tile.dart';

class UpperNavigationItemsSection extends StatelessWidget {
  const UpperNavigationItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomListTile(
            item: Constants.mainMenuItems[index],
          ),
        ),
        childCount: Constants.mainMenuItems.length,
      ),
    );
  }
}
