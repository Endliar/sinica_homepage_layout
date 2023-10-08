import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../../helpers/size_config.dart';
import '../../models/Card.dart';

Container reorderCard(int index) {
  return Container(
    width: getProportionateScreenWidth(160),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
    ),
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            demoCard[index].images,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 12, bottom: 92, left: 12, top: 22),
                child: Text(
                  demoCard[index].title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Повторить предыдущий заказ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: kIconColor,
                          elevation: 0,
                        ),
                        child: const Text(
                          "1056₽ +",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor),
                        )),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
