import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../view/widgets/dashboard_view.dart';

class ResponsiveDashboardApp extends StatelessWidget {
  const ResponsiveDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.lightGray,
        primarySwatch: Colors.blue,
      ),
      home: const DashboardView(),
    );
  }
}
