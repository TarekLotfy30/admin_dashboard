import 'package:flutter/material.dart';

class ItemDetailsModel {
  const ItemDetailsModel({
    required this.color,
    required this.title,
    required this.value,
  });
  final Color color;
  final String title;
  final String value;
}
