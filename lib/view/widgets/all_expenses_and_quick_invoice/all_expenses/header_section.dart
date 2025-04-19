import 'package:flutter/material.dart';

import '../../../../model/drop_menu_item.dart';
import '../../../../utils/constants/drop_down_menus.dart';
import '../../../../utils/styles/app_fonts.dart';
import '../../../components/custom_drop_down_menu.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  List<DropdownMenuItem<DropMenuItem>> _buildDropdownMenuItems() {
    return DropDownMenus.dropDownMenuItemsList
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
          'All Expenses',
          style: AppFonts.styleSemiBold20(context),
        ),
        CustomDropDownMenu(
          value: DropDownMenus.dropDownMenuItemsList[0],
          onChanged: (value) {},
          items: _buildDropdownMenuItems(),
        ),
      ],
    );
  }
}
