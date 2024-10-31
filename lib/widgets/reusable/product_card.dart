import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String descript;
  final Color mainBoxColor;
  final Color titleColor;
  final Color descriptColor;
  final Color containerColor;

  const ProductCard(
      {super.key,
      required this.title,
      required this.descript,
      required this.mainBoxColor,
      required this.titleColor,
      required this.descriptColor,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 185,
      decoration: BoxDecoration(
        color: mainBoxColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: titleColor, fontWeight: FontWeight.w500, fontSize: 17),
            ),
            Text(
              descript,
              style: TextStyle(
                color: descriptColor,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 160,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
