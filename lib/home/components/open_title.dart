import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../../helpers/size_config.dart';

Padding openTitle(String title) {
  return Padding(
    padding: EdgeInsets.only(
        top: getProportionateScreenHeight(70),
        bottom: getProportionateScreenHeight(20),
        // Adjust this value to control the top padding
        left: getProportionateScreenWidth(16),
        right: getProportionateScreenWidth(16)),
    child: Row(
      children: [
        const CircleAvatar(
          backgroundColor: kIconColor,
          radius: 12,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 24,
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(8),),
        AutoSizeText(title,
            maxLines: 1,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        SizedBox(
          width: getProportionateScreenWidth(18),
        ),
        const Expanded(
            child: CircleAvatar(
          backgroundColor: kIconColor,
          radius: 24,
          child: Icon(
            Icons.phone,
            size: 24,
            color: Colors.white,
          ),
        ))
      ],
    ),
  );
}
