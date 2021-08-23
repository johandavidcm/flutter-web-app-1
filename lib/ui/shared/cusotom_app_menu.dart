import 'package:flutter/material.dart';
import 'package:primeraapp/services/navigation_service.dart';

import 'custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPressed: () => navigationService.navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          CustomFlatButton(
            text: 'Contador con Provider',
            onPressed: () => navigationService.navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          CustomFlatButton(
            text: 'Otra página',
            onPressed: () => navigationService.navigateTo('/otrolado'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
