import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../../helpers/size_config.dart';

Row profitableRow(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kIconColor),
          onPressed: () {},
          child: Row(
            children: [
              const Text(
                "Больше",
                style: TextStyle(
                    color: kSecondaryInactiveTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: getProportionateScreenWidth(4),
              ),
              const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 16,
                color: kPrimaryColor,
              ),
            ],
          ))
    ],
  );
}
