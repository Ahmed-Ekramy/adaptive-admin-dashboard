import 'package:flutter/material.dart';
import '../../../../core/widgets/adaptive_widget.dart';
import '../widget/dashboard_desktop_layout.dart';
import '../widget/dashboard_mobile_layout.dart';
import '../widget/dashboard_tablet_layout.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
