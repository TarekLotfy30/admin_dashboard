import '../../model/drop_meun_item.dart';

class DropDownMeuns {
  const DropDownMeuns._();
  static final List<DropMeunItem> dropDownMenuItemsList = [
    const DropMeunItem(1, 'Monthly'),
    const DropMeunItem(2, 'Yearly'),
    const DropMeunItem(3, 'All Time'),
  ];
}
