import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../model/menu_item.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_fonts.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({super.key, required this.item});

  final MenuItem item;

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: ListTile(
        hoverColor: Colors.transparent,
        title: Text(
          widget.item.title,
          style: AppFonts.styleRegular16(context).copyWith(
            color: isHovered ? AppColors.primary : null,
            fontWeight: isHovered ? FontWeight.w700 : null,
          ),
          softWrap: true,
        ),
        leading: SvgPicture.asset(widget.item.iconAsset),
        onTap: widget.item.onTap,
        trailing: Container(
          width: 3.5,
          decoration: BoxDecoration(
            color: isHovered ? AppColors.primary : null,
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }
}
