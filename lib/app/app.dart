import 'package:flutter/material.dart';
import 'package:sample_book_store/common/routing/app_router.dart';
import 'package:sample_book_store/common/theme/theme.dart';
import 'package:sample_book_store/common/utils/utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();

    return GestureDetector(
      onTap: () => context.unfocus(),
      child: MaterialApp(
        title: 'BookStore',
        theme: AppTheme().lightTheme,
        darkTheme: AppTheme().darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
