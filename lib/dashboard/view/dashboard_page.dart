part of 'view.dart';

class DashboardPage extends StatelessWidget {
  static const routeName = '/';

  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: DashboardView(),
    );
  }
}
