import 'package:flutter/material.dart';

import '../../../model/drop_menu_item.dart';
import '../../../utils/constants/constants.dart';
import '../../../utils/styles/app_fonts.dart';
import '../../components/custom_drop_down_menu.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  List<DropdownMenuItem<DropMenuItem>> _buildDropdownMenuItems() {
    return Constants.dropDownMenuItemsList
        .map<DropdownMenuItem<DropMenuItem>>(
          (item) => DropdownMenuItem<DropMenuItem>(
            value: item,
            child: Text(item.label),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppFonts.styleSemiBold20(context),
        ),
        CustomDropDownMenu(
          value: Constants.dropDownMenuItemsList[0],
          onChanged: (value) {},
          items: _buildDropdownMenuItems(),
        ),
      ],
    );
  }
}
