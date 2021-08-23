import 'package:flutter/material.dart';

class _NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack(String routeName) {
    navigatorKey.currentState!.pop();
  }
}

final navigationService = _NavigationService();
