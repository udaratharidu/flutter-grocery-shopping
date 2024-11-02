import 'package:flutter/material.dart';

class saleAndLowCard extends StatelessWidget {
  final String titile;
  final String unit;
  final double wheight;
  final double price;
  const saleAndLowCard(
      {super.key,
      required this.titile,
      required this.wheight,
      required this.price,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 185,
      decoration: BoxDecoration(
        color: const Color(0xff9E00FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 15,
              ),
              child: Container(
                height: 85,
                width: 160,
                decoration: BoxDecoration(
                  color: const Color(0xff06FFA5),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Text(
              titile,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      wheight.toString() + unit,
                      style: const TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      "$price\$",
                      style: const TextStyle(
                          color: Color(0xffFFE500),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Icon(
                  Icons.add_circle_outline,
                  size: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
