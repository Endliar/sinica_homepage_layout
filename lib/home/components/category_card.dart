import 'package:flutter/material.dart';

import '../../helpers/size_config.dart';
import '../../models/ProductCategory.dart';
import 'categoryCard.dart';

SizedBox categoryCard() {
  return SizedBox(
      width: double.infinity,
      child: ListView.separated(
        itemCount: (category.length / 2).ceil(),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => SizedBox(
          height: getProportionateScreenHeight(14),
        ),
        itemBuilder: (context, index) {
          final startIndex = index * 2;
          final endIndex = startIndex + 2;
          return Row(
            children: category.sublist(startIndex, endIndex).map((cat) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: CategoryCard(
                    id: cat.id,
                    title: cat.title,
                    images: cat.images,
                  ),
                ),
              );
            }).toList(),
          );
        },
      ));
}