import 'package:flutter/material.dart';
import 'package:sinica/home/components/reorder_card.dart';

import '../../helpers/size_config.dart';
import '../../models/Card.dart';
import 'buildCard.dart';

SizedBox recommendationSlider() {
  return SizedBox(
      height: getProportionateScreenHeight(213),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: demoCard.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: getProportionateScreenWidth(12),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          if (index == 1) {
            return reorderCard(index);
          } else {
            return BuildCard(
                id: demoCard[index].id,
                title: demoCard[index].title,
                image: demoCard[index].images);
          }
        },
      ));
}