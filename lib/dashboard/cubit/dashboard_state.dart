part of 'dashboard_cubit.dart';

class DashboardState extends Equatable {
  const DashboardState({
    this.currentTab = TabItem.home,
  });

  final TabItem currentTab;

  DashboardState copyWith({
    TabItem? currentTab,
  }) {
    return DashboardState(
      currentTab: currentTab ?? this.currentTab,
    );
  }

  @override
  List<Object> get props => [currentTab];
}
