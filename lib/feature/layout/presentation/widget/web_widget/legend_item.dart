import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_style.dart';

class LegendItem extends StatelessWidget {
  final String text;
  final Color color;

  const LegendItem(this.text, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Text(text, style: AppStyles.styleMedium11(context)),
      ],
    );
  }
}