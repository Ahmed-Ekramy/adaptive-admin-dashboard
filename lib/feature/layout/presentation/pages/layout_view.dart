import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/adaptive_widget.dart';
import '../manager/cubit.dart';
import '../widget/dashboard_mobile_layout.dart';
import '../widget/tablet_Widget/dashboard_tablet_layout.dart';
import '../widget/web_widget/dashboard_desktop_layout.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: Scaffold(
        body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout(),
        ),
      ),
    );
  }
}
