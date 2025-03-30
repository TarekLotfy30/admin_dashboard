import 'package:admin_dashboard/app/responsive_dashboard_app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => ResponsiveDashboardApp(),
    ),
  );
}
