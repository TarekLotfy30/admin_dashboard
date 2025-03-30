import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String iconAsset;
  final VoidCallback onTap;

  const MenuItem({
    required this.title,
    required this.iconAsset,
    required this.onTap,
  });
}
