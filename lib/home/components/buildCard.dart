import 'package:flutter/material.dart';
import 'package:sinica/helpers/size_config.dart';

class BuildCard extends StatelessWidget {
  final int id;
  final String title;
  final String image;

  const BuildCard(
      {super.key, required this.id, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
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
              image,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 12, bottom: 160, left: 12, top: 22),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
