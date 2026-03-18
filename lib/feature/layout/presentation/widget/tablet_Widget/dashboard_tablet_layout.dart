import 'package:adaptive_dashboard/feature/layout/presentation/widget/web_widget/category_distribution_chart.dart';
import 'package:adaptive_dashboard/feature/layout/presentation/widget/web_widget/custom_drawer.dart';
import 'package:adaptive_dashboard/feature/layout/presentation/widget/web_widget/latest_products_item.dart';
import 'package:adaptive_dashboard/feature/layout/presentation/widget/web_widget/latest_users_item.dart';
import 'package:adaptive_dashboard/feature/layout/presentation/widget/web_widget/stats_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../manager/cubit.dart';
import '../../manager/state.dart';
import 'dashBoard_content_tablet.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);
        return Row(
          children: [
            Expanded(flex: 2, child: CustomDrawer()),
            Expanded(flex: 6, child:  cubit.getBodyTablet()),
          ],
        );
      },
    );
  }
}


