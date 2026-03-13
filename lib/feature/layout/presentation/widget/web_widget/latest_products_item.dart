import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_style.dart';

class LatestProductsItem extends StatelessWidget {
  const LatestProductsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppAssets.chert,
                  height: 40,
                  width: 40,
                ),
              ),
              SizedBox(width: 12),
              Text(
                "Lunar Wireless Mouse",
                style: AppStyles.styleMedium14(
                  context,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            children: [
              Text(
                "Electronics",
                style: AppStyles.styleRegular14(context),
              ),
              SizedBox(width: 20),
              Text(
                "In Stock",
                style: AppStyles.styleMedium14(context),
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          "\$200",
          style: AppStyles.styleBold14(context),
        ),
      ],
    );
  }
}
