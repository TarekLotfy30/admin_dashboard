import 'package:flutter/material.dart';

/// Utility class for managing responsive sizes across the app
///
/// This class provides breakpoints and dimension utilities to
/// enable responsive design throughout the application

class SizeConfig {
  SizeConfig._();

  /// Breakpoint for desktop layouts (in logical pixels)
  static const double desktop = 1405;

  /// Breakpoint for tablet layouts (in logical pixels)
  static const double tablet = 813;

  /// Current screen width (in logical pixels)
  static late double width;

  /// Current screen height (in logical pixels)
  static late double height;

  /// Initialize size configurations based on the current BuildContext
  ///
  /// Call this method in the root widget or each time you need
  /// updated screen dimensions.
  ///
  /// @param context The current BuildContext
  static void init(BuildContext context) {
    // Get MediaQuery data
    final mediaQuery = MediaQuery.sizeOf(context);

    // Store dimensions
    height = mediaQuery.height;
    width = mediaQuery.width;
  }
}
