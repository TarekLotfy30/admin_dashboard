import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/constants.dart';
import '../../../utils/styles/app_fonts.dart';
import 'custom_visa_card.dart';


class MyCardSection extends StatelessWidget {
  MyCardSection({super.key});

  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppFonts.styleSemiBold20(context),
        ),
        const SizedBox(height: 20),
        CardPageView(pageController: pageController),
        const SizedBox(height: 20),
        PageIndicator(pageController: pageController),
      ],
    );
  }
}

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
        padding: const EdgeInsets.only(right: 20),
        child: CustomVisaCard(
          visaCardItem: Constants.visaCardsList[index],
        ),
      ),
      controller: pageController,
      physics: const BouncingScrollPhysics(),
    );
  }
}
