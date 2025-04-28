import 'package:flutter/material.dart';

import '../../../model/item_details_model.dart';
import '../../../utils/styles/app_fonts.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        leading: Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            color: itemDetailsModel.color,
            shape: const OvalBorder(),
          ),
        ),
        title: Text(
          itemDetailsModel.title,
          style: AppFonts.styleRegular16(context),
        ),
        trailing: Text(
          itemDetailsModel.value,
          style: AppFonts.styleMedium16(context),
        ),
      ),
    );
  }
}
