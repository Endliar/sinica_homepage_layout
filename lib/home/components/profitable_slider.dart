import 'package:flutter/material.dart';
import 'package:sinica/home/components/profitableCard.dart';

import '../../helpers/size_config.dart';
import '../../models/Profitable.dart';

SizedBox profitableSlider() {
  return SizedBox(
    width: double.infinity,
    height: getProportionateScreenHeight(112),
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: profitableCard.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: getProportionateScreenWidth(12),
          );
        },
        itemBuilder: (context, index) {
          return ProfitableCard(
            id: profitableCard[index].id,
            title: profitableCard[index].title,
            properties: profitableCard[index].properties,
            price: profitableCard[index].price,
            images: profitableCard[index].images,
            discount: profitableCard[index].discount,
            oldPrice: profitableCard[index].oldPrice,
          );
        }),
  );
}
