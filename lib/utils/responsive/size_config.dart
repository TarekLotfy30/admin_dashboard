import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
/// Utility class for managing responsive sizes across the app
///
/// This class provides breakpoints and dimension utilities to
/// enable responsive design throughout the application

class SizeConfig {
  /// Breakpoint for desktop layouts (in logical pixels)
  static const double desktop = 1200;

  /// Breakpoint for tablet layouts (in logical pixels)
  static const double tablet = 800;

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


//  Usage
// class _DashBoradViewState extends State<DashBoradView> {
//   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig.init(context);
//     return Scaffold(
//       key: scaffoldKey,
//       appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
//           ? AppBar(
//               elevation: 0,
//               backgroundColor: const Color(0xFFFAFAFA),
//               leading: IconButton(
//                   onPressed: () {
//                     scaffoldKey.currentState!.openDrawer();
//                   },
//                   icon: const Icon(Icons.menu)),
//             )
//           : null,
//       backgroundColor: const Color(0xFFF7F9FA),
//       drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet