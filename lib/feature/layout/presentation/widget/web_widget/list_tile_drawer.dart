import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';

class ListTileDrawer extends StatelessWidget {
  final String title;

  final Color? color;

  final String icon;

  final bool? isActive;

  const ListTileDrawer(
    this.color, {
    super.key,
    required this.title,
    required this.icon,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive == true ? AppColors.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        horizontalTitleGap: 8,
        visualDensity: VisualDensity(vertical: -3),
        contentPadding: EdgeInsets.only(left: 8, right: 0),
        dense: true,
        leading: SvgPicture.asset(
          icon,
          width: 18,
          height: 18,
          colorFilter: ColorFilter.mode(
            isActive == true ? Colors.white :
             color ??  AppColors.textSecondary,
            BlendMode.srcIn,
          ),
        ),
        title: Text(
          title,
          style: AppStyles.styleMedium14(
            context,
          ).copyWith(color: isActive == true ? Colors.white : color),
        ),
      ));
  }
}
