import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../../helpers/size_config.dart';

Container discountBanner(String title) {
  return Container(
      height: 60,
      width: 361,
      decoration: BoxDecoration(
          color: kIconColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(16),
          ),
          const Image(
            image: AssetImage("assets/images/discount.png"),
            height: 36,
            width: 36,
          ),
          SizedBox(
            width: getProportionateScreenWidth(4),
          ),
          Expanded(
            child: AutoSizeText(
              title,
              maxLines: 1,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
                radius: 20,
                backgroundColor: kIconColor,
                child: Icon(Icons.arrow_forward_ios_sharp, color: kTextColor)),
          ),
        ],
      ));
}