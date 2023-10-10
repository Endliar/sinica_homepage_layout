import 'package:flutter/material.dart';
import 'package:sinica/helpers/constants.dart';
import 'package:sinica/helpers/size_config.dart';

class ProfitableCard extends StatelessWidget {
  final int id;
  final String title;
  final String properties;
  final int oldPrice;
  final int price;
  final int discount;
  final String images;

  const ProfitableCard(
      {super.key,
      required this.id,
      required this.title,
      required this.properties,
      required this.price,
      required this.images,
      required this.discount,
      required this.oldPrice});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              images,
              width: 113,
              height: 113,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 82, right: 58, left: 8, bottom: 8),
            child: Container(
              height: getProportionateScreenHeight(22),
              width: getProportionateScreenWidth(46),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: kPrimaryColor),
              child: Center(
                  child: Text(
                "$discount%",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )),
            ),
          )
        ]),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              properties,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kSecondaryInactiveTextColor),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 4),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kIconColor,
                    padding: const EdgeInsets.all(6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "$oldPrice",
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kSecondaryInactiveTextColor),
                    ),
                    TextSpan(
                        text: ' $price +',
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor))
                  ]))),
            )
          ],
        )
      ],
    );
  }
}
