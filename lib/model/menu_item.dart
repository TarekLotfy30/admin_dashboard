import 'package:flutter/material.dart';

class MenuItem {
  const MenuItem({
    required this.title,
    required this.iconAsset,
    required this.onTap,
  });
  final String title;
  final String iconAsset;
  final VoidCallback onTap;
}
