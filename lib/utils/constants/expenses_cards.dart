import '../../model/expenses_card.dart';

import '../app_images.dart';

class ExpensesCards {
  ExpensesCards._();

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
}
