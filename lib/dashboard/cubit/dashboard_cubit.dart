import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sample_book_store/dashboard/models/models.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState());

  void onTabChanged(TabItem selectedTab) =>
      emit(state.copyWith(currentTab: selectedTab));
}
