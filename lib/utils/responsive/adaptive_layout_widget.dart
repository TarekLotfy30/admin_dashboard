import 'package:flutter/material.dart';

import 'size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  /// Creates an adaptive layout widget that switches between mobile, tablet,
  /// and desktop layouts
  /// based on the available screen width.
  ///
  /// [mobileBuilder], [tabletBuilder], and [desktopBuilder] are functions
  ///  that build the respective layouts.
  const AdaptiveLayout({
    super.key,
    required this.mobileBuilder,
    required this.tabletBuilder,
    required this.desktopBuilder,
  });

  final WidgetBuilder mobileBuilder;
  final WidgetBuilder tabletBuilder;
  final WidgetBuilder desktopBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileBuilder(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletBuilder(context);
        } else {
          return desktopBuilder(context);
        }
      },
    );
  }
}
