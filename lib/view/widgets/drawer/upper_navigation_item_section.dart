import 'package:flutter/material.dart';

import '../../../utils/constants/menu_constants.dart';
import 'custom_list_tile.dart';

class UpperNavigationItemsSection extends StatelessWidget {
  const UpperNavigationItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: MenuConstant.mainMenuItems
          .map(
            (item) => CustomListTile(item: item),
          )
          .toList(),
    );
  }
}
