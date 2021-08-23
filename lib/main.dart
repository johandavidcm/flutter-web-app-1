import 'package:flutter/material.dart';

import 'locator.dart';
import 'router/route_generator.dart';
import 'services/navigation_service.dart';
import 'ui/layout/main_layout_page.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Routes app',
        initialRoute: '/stateful',
        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
        builder: (_, child) {
          return MainLayoutPage(
            child: child ?? CircularProgressIndicator(),
          );
        },
      );
}
