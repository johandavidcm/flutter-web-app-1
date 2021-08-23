import 'package:flutter/material.dart';
import 'package:primeraapp/ui/shared/cusotom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;
  const MainLayoutPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            Spacer(),
            Expanded(
              child: child,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
