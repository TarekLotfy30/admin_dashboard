import 'package:flutter/material.dart';

import '../../../../utils/constants/constants.dart';
import '../../../../utils/styles/app_fonts.dart';
import '../../../components/custom_user_info_list_tile.dart';

class LatestTransactionsSection extends StatelessWidget {
  const LatestTransactionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppFonts.styleMedium16(context),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: Constants.usersInfoLatestTransaction
                .map(
                  (item) => IntrinsicWidth(
                    child: CustomUserInfoListTile(
                      userInfo: item,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
