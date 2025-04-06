import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'app/responsive_dashboard_app.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const ResponsiveDashboardApp(),
    ),
  );
}
