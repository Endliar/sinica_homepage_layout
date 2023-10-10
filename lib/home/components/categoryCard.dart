import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final int id;
  final String title;
  final String images;

  const CategoryCard(
      {super.key, required this.id, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            images,
            height: 250,
            width: 174,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 12),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black, fontFamily: "Gilroy"),
          ),
        )
      ],
    );
  }
}
