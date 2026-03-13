import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_style.dart';

class LatestUsersItem extends StatelessWidget {
  const LatestUsersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE2E8F0)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        minVerticalPadding:20,
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(AppAssets.me),
        ),
        title: Text("Ahmed Ekramy", style: AppStyles.styleBold14(context)),
        subtitle: Text(
          "Registered 2m ago",
          style: AppStyles.styleMedium10(context),
        ),
      ),
    );
  }
}