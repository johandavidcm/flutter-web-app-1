import 'package:flutter/material.dart';
import 'package:primeraapp/services/navigation_service.dart';

import '../../locator.dart';
import 'custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (_, constraints) {
          return constraints.maxWidth > 520 ? _TableDesktopMenu() : _MobileMenu();
        },
      );
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Row(
          children: [
            CustomFlatButton(
              text: 'Contador Stateful',
              onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            CustomFlatButton(
              text: 'Contador con Provider',
              onPressed: () => locator<NavigationService>().navigateTo('/provider'),
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            CustomFlatButton(
              text: 'Otra página',
              onPressed: () => locator<NavigationService>().navigateTo('/otrolado'),
              color: Colors.black,
            ),
            CustomFlatButton(
              text: 'Stateful 100',
              onPressed: () => locator<NavigationService>().navigateTo('/stateful/100'),
              color: Colors.black,
            ),
          ],
        ),
      );
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFlatButton(
              text: 'Contador Stateful',
              onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            CustomFlatButton(
              text: 'Contador con Provider',
              onPressed: () => locator<NavigationService>().navigateTo('/provider'),
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            CustomFlatButton(
              text: 'Otra página',
              onPressed: () => locator<NavigationService>().navigateTo('/otrolado'),
              color: Colors.black,
            ),
          ],
        ),
      );
}
