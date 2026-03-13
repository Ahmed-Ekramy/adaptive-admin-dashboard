import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_style.dart';

class StatsCards extends StatelessWidget {
  const StatsCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only( right: 24),
      elevation: 0,
      color: Colors.white,
      borderOnForeground:  false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Color(0xffE2E8F0), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, ),
        child: ListTile(
          leading:  FittedBox(
            child: Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.all(5),
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xffF9FAFB),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(AppAssets.product , width: 20, height: 20, colorFilter: ColorFilter.mode(Color(0xff355872), BlendMode.srcIn))
            ),
          ),
          title:  Text("Total Products", style: AppStyles.styleMedium14(context)),
          subtitle: Text("12", style: AppStyles.styleBold24(context)),

        ),
      ),
    );
  }
}