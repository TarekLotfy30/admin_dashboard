import 'package:flutter/material.dart';
import '../../../utils/styles/app_fonts.dart';
import 'card_page_view.dart';
import 'page_indicator.dart';

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
