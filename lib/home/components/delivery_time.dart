import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../../helpers/size_config.dart';

Row deliveryTime() {
  return Row(
    children: [
      const Icon(
        Icons.access_time,
        color: kPrimaryColor,
        size: 24,
      ),
      SizedBox(
        width: getProportionateScreenWidth(8),
      ),
      const Text(
        "Доставка ",
        style: TextStyle(color: Colors.grey, fontSize: 24),
      ),
      const Text(
        "40 минут",
        style: TextStyle(fontSize: 24),
      )
    ],
  );
}