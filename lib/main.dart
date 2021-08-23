import 'package:flutter/material.dart';
import 'package:primeraapp/services/navigation_service.dart';
import 'package:primeraapp/ui/layout/main_layout_page.dart';

import 'router/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Routes app',
        initialRoute: '/stateful',
        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: navigationService.navigatorKey,
        builder: (_, child) {
          return MainLayoutPage(
            child: child ?? CircularProgressIndicator(),
          );
        },
      );
}
