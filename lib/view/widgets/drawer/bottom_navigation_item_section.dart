import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'custom_list_tile.dart';

class BottomNavigationItemsSection extends StatelessWidget {
  const BottomNavigationItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Column(
        spacing: 20,
        children: Constants.bottomMenuItems
            .map(
              (item) => CustomListTile(item: item),
            )
            .toList(),
      ),
    );
  }
}
