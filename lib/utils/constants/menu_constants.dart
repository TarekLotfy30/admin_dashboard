import '../../model/menu_item.dart';
import '../images/app_images.dart';

class MenuConstant {
  MenuConstant._();
  static final List<MenuItem> bottomMenuItems = [
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

  static final List<MenuItem> mainMenuItems = [
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
}
