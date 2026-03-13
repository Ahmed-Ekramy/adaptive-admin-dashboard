import 'package:adaptive_dashboard/feature/layout/presentation/manager/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context) => BlocProvider.of(context);
 int isActive=0;
  void changeActive( int index) {
    isActive=index;
    emit(LayoutChangeActive());
  }
}
