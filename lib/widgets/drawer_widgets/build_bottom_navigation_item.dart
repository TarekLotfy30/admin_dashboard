import 'package:flutter/material.dart';
import '../../models/menu_item.dart';
import '../../utils/app_images.dart';
import 'custom_list_tile.dart';

class BuildBottomNavigationItem extends StatelessWidget {
  BuildBottomNavigationItem({super.key});

  final List<MenuItem> bottomMenuItems = [
    MenuItem(
      title: 'Settings system',
      iconAsset: Assets.imagesSettings,
      onTap: () {},
    ),
    MenuItem(
      title: 'Logout',
      iconAsset: Assets.imagesLogout,
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 10),
      child: Column(
        spacing: 20,
        children:
            bottomMenuItems.map((item) => CustomListTile(item: item)).toList(),
      ),
    );
  }
}
