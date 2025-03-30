import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  /// Creates an adaptive layout widget that switches between mobile, tablet,
  ///  and desktop layouts
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

  final double tabletBreakpoint = 600;
  final double desktopBreakpoint = 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < tabletBreakpoint) {
          return mobileBuilder(context);
        } else if (constraints.maxWidth < desktopBreakpoint) {
          return tabletBuilder(context);
        } else {
          return desktopBuilder(context);
        }
      },
    );
  }
}

//USAGE EXAMPLE

/*AdaptiveLayout(
mobileBuilder: (context) => const MobileLayout(),
tabletBuilder: (context) => const TabletLayout(),
desktopBuilder: (context) => const DesktopLayout(),
);*/
