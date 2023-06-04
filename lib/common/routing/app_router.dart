import 'package:flutter/material.dart';
import 'package:sample_book_store/dashboard/view/view.dart';
import 'package:sample_book_store/detail/view/view.dart';
import 'package:sample_book_store/home/home.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case DashboardPage.routeName:
        return MaterialPageRoute(
          builder: (_) => DashboardPage(),
        );
      case DetailPage.routeName:
        final args = settings.arguments as Map<String, Book>;
        return MaterialPageRoute(
          builder: (_) => DetailPage(
            data: args['book']!,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Error: Route not found!'),
            ),
          ),
        );
    }
  }
}
