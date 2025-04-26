import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xffD9D9D9),
      thickness: 1.8,
      height: 40,
    );
  }
}
