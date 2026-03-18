import 'package:adaptive_dashboard/feature/layout/presentation/manager/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../categories/presentation/pages/categories_view.dart';
import '../../../product/presentation/pages/products_view.dart';
import '../../../users/presentation/pages/users_view.dart';
import '../pages/layout_view.dart';
import '../widget/tablet_Widget/dashBoard_content_tablet.dart';
import '../widget/tablet_Widget/dashboard_tablet_layout.dart';
import '../widget/web_widget/dash_board_content.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context) => BlocProvider.of(context);
 int isActive=0;
  void changeActive( int index) {
    isActive=index;
    emit(LayoutChangeActive());
  }
  List <Widget> pages =[
    DashBoardContent(),
    ProductView(),
    CategoriesView(),
    UsersView(),
  ];
  List <Widget> pagesTablet =[
    DashBoardContentTablet(),
    ProductView(),
    CategoriesView(),
    UsersView(),
  ];
  Widget getBody(){
    return pages[isActive];
  }
  Widget getBodyTablet(){
    return pagesTablet[isActive];
  }
}
