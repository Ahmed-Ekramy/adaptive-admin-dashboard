import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class ListTileDrawer extends StatelessWidget {
  final String title ;
  final Color ?color ;
  final String icon ;

  const ListTileDrawer( this.color, {super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        icon,
        width: 18,
        height: 18,
        colorFilter: ColorFilter.mode(color??AppColors.textSecondary, BlendMode.srcIn),
      ),
      title: Text(title, style: AppStyles.styleMedium14(context).copyWith(color: color)),
    );
  }
}