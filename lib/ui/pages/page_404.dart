import 'package:flutter/material.dart';

import '../shared/cusotom_app_menu.dart';
import '../shared/custom_flat_button.dart';

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomAppMenu(),
            Text(
              '404',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'No se encontró la página',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            CustomFlatButton(
                text: 'Regresar',
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/stateful',
                  );
                })
          ],
        ),
      ),
    );
  }
}
