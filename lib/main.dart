import 'package:flutter/material.dart';

import 'locator.dart';
import 'router/router.dart';
import 'services/navigation_service.dart';
import 'ui/layout/main_layout_page.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Routes app',
        initialRoute: '/',
        // onGenerateRoute: RouteGenerator.generateRoute,
        onGenerateRoute: Flurorouter.router.generator,
        navigatorKey: locator<NavigationService>().navigatorKey,
        builder: (_, child) {
          return MainLayoutPage(
            child: child ?? CircularProgressIndicator(),
          );
        },
      );
}
