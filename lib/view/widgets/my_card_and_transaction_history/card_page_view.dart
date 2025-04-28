import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'custom_visa_card.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      itemCount: Constants.visaCardsList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 5),
        child: CustomVisaCard(
          visaCardItem: Constants.visaCardsList[index],
        ),
      ),
      controller: pageController,
      physics: const BouncingScrollPhysics(),
    );
  }
}
