
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/cubit.dart';

import '../../manager/state.dart';
import 'custom_drawer.dart';
import 'dash_board_content.dart';


class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);
        return Row(
          children: [
            Expanded(flex: 1, child: CustomDrawer()),
            SizedBox(width: 32),
            Expanded(flex: 5, child: cubit.getBody()),
          ],
        );
      },
    );
  }
}




