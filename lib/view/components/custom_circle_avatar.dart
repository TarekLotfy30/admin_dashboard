import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.imagePath,
    required this.backgroundColor,
    this.radius,
  });

  final String imagePath;
  final Color backgroundColor;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: SvgPicture.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
