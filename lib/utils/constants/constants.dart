import '../../model/drop_menu_item.dart';
import '../../model/expenses_card.dart';
import '../../model/menu_item.dart';
import '../../model/transaction_history.dart';
import '../../model/user_info.dart';
import '../../model/visa_card.dart';
import '../images/app_images.dart';

class Constants {
  Constants._();
  static final List<DropMenuItem> dropDownMenuItemsList = [
    const DropMenuItem(1, 'Monthly'),
    const DropMenuItem(2, 'Yearly'),
    const DropMenuItem(3, 'All Time'),
  ];

  static final List<ExpensesCard> expensesCardsList = [
    ExpensesCard(
      id: 1,
      iconData: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      amount: '20,129',
      onTap: () {},
    ),
    ExpensesCard(
      id: 2,
      iconData: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      amount: '20,129',
      onTap: () {},
    ),
    ExpensesCard(
      id: 3,
      iconData: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      amount: '20,129',
      onTap: () {},
    ),
  ];

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

  static const List<TransactionHistory> transactionsHistoryList = [
    TransactionHistory(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isTransfer: true,
    ),
    TransactionHistory(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isTransfer: false,
    ),
    TransactionHistory(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isTransfer: false,
    ),
  ];

  static final List<UserInfo> usersInfoList = [
    const UserInfo(
      name: 'Lekan Okeowo',
      email: 'demo@gmail.com',
      photoUrl: Assets.imagesAvatar3,
    ),
  ];

  static final List<UserInfo> usersInfoLatestTransaction = [
    const UserInfo(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      photoUrl: Assets.imagesAvatar1,
    ),
    const UserInfo(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      photoUrl: Assets.imagesAvatar2,
    ),
    const UserInfo(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      photoUrl: Assets.imagesAvatar1,
    ),
    const UserInfo(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      photoUrl: Assets.imagesAvatar2,
    ),
    const UserInfo(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      photoUrl: Assets.imagesAvatar1,
    ),
    const UserInfo(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      photoUrl: Assets.imagesAvatar3,
    ),
  ];


  static List<VisaCard> visaCardsList = [
    VisaCard(
      cardNumber: '0918 8124 0042 8129',
      cardHolderName: 'Syah Bandi',
      expiryDate: '12/20',
      cvv: '124',
    ),
    VisaCard(
      cardNumber: '1234 1234 1234 1234',
      cardHolderName: 'John Doe',
      expiryDate: '12/9',
      cvv: '898',
    ),
    VisaCard(
      cardNumber: '5986 1234 5789 1563',
      cardHolderName: 'Karem Sayed',
      expiryDate: '1/6',
      cvv: '458',
    ),
   ];
}
