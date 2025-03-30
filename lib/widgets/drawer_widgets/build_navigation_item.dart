import 'package:flutter/material.dart';

import '../../models/menu_item.dart';

import '../../utils/app_images.dart';
import 'custom_list_tile.dart';

class BuildNavigationItem extends StatelessWidget {
  BuildNavigationItem({super.key});

  final menuItems = [
    MenuItem(
      title: 'Dashboard',
      iconAsset: Assets.imagesDashboard,
      onTap: () {},
    ),
    MenuItem(
      title: 'My Transaction',
      iconAsset: Assets.imagesMyTransaction,
      onTap: () {},
    ),
    MenuItem(
      title: 'Statistics',
      iconAsset: Assets.imagesStatistics,
      onTap: () {},
    ),
    MenuItem(
      title: 'Wallet Account',
      iconAsset: Assets.imagesWalletAccount,
      onTap: () {},
    ),
    MenuItem(
      title: 'My Investments',
      iconAsset: Assets.imagesMyInvestments,
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        spacing: 20,
        children: menuItems.map((item) => CustomListTile(item: item)).toList(),
      ),
    );
  }
}
