
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/constants.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController, // PageController
      count: Constants.visaCardsList.length,
      effect: const ExpandingDotsEffect(
        dotColor: AppColors.mediumGray,
        activeDotColor: AppColors.primary,
        dotHeight: 8,
        dotWidth: 8,
        spacing: 8,
        expansionFactor: 3,
        strokeWidth: 1.5,
        radius: 16,
      ),
      onDotClicked: (index) async {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}
