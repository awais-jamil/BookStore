part of 'view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      buildWhen: (prev, curr) => prev.currentTab != curr.currentTab,
      builder: (context, state) {
        return Scaffold(
          body: _TabBody(currentTab: state.currentTab),
          bottomNavigationBar: _BottomNavBar(
            currentTab: state.currentTab,
            onChanged: (selectedTab) =>
                context.read<DashboardCubit>().onTabChanged(selectedTab),
          ),
        );
      },
    );
  }
}

class _TabBody extends StatelessWidget {
  const _TabBody({required this.currentTab});

  final TabItem currentTab;

  @override
  Widget build(BuildContext context) {
    switch (currentTab) {
      case TabItem.home:
        return const HomePage();
      default:
        return const Center(child: Text('Not implemented'));
    }
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({
    required this.currentTab,
    required this.onChanged,
  });

  final TabItem currentTab;
  final Function(TabItem) onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomBottomNavBar(
      children: TabItem.items.map((tab) {
        return CustomBottomNavItem(
          icon: AssetIcon(tab.icon),
          label: tab.title,
          isSelected: tab == currentTab,
          onTap: () {
            context.unfocus();
            onChanged(tab);
          },
        );
      }).toList(),
    );
  }
}
