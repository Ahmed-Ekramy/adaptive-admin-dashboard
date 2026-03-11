import 'package:flutter/material.dart';

import 'core/routes/routes.dart';

class AdaptiveDashboard extends StatelessWidget {
  const AdaptiveDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adaptive Dashboard',
      onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      initialRoute: Routes.layout,

    );
  }
}