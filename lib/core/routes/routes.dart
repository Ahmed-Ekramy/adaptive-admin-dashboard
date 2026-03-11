import 'package:flutter/material.dart';
import '../../feature/layout/presentation/pages/layout_view.dart';
import '../widgets/componants.dart';

class Routes {
  static const String layout="layoutView";
}
class AppRoutes{
  static Route onGenerateRoute(RouteSettings settings){
    switch(settings.name) {
      case Routes.layout:
        return MaterialPageRoute(builder: (context) => const LayoutView());
      default:
        return MaterialPageRoute(builder: (context) => unDefineRoute());
    }
  }
}