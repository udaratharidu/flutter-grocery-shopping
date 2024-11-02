import 'package:flutter/material.dart';

// ignore: camel_case_types
class catagoryCard extends StatelessWidget {
  final String title;
  final String discription;
  final Color mainBoxColur;
  final Color circulColor;
  final Color mainBorderColor;
  const catagoryCard(
      {super.key,
      required this.title,
      required this.discription,
      required this.mainBoxColur,
      required this.circulColor,
      required this.mainBorderColor});

  final double cardHeight = 82;
  final double cardWidth = 180;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        color: mainBoxColur.withOpacity(0.29),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: mainBorderColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3B3636),
                  ),
                ),
                Text(
                  discription,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff3B3636).withOpacity(0.47),
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: circulColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
