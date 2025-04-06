import 'package:flutter/material.dart';

import '../../../../model/drop_meun_item.dart';
import '../../../../utils/app_fonts.dart';
import '../../../../utils/constants/drop_down_meuns.dart';
import '../../../components/custom_drop_down_menu.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppFonts.styleSemiBold16(context),
        ),
        const Spacer(),
        CustomDropDownMenu(
          value: DropDownMeuns.dropDownMenuItemsList[0],
          onChanged: (value) {
            debugPrint(value.toString());
          },
          items: DropDownMeuns.dropDownMenuItemsList
              .map<DropdownMenuItem<DropMeunItem>>(
                (item) => DropdownMenuItem<DropMeunItem>(
                  value: item,
                  child: Text(item.label),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
