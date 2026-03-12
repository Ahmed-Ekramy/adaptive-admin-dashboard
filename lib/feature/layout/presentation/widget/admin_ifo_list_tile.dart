import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class AdminInfoListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;

  const AdminInfoListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColors.primary,
        child: SvgPicture.asset(
          icon,
          colorFilter:ColorFilter.mode(Colors.white, BlendMode.srcIn)  ,
        ),
      ),
      title: Text(title, style: AppStyles.styleBold18(context)),
      subtitle: Text(subtitle, style: AppStyles.styleRegular12(context)),
    );
  }
}