import 'package:flutter/material.dart';

// ignore: camel_case_types
class priceList extends StatelessWidget {
  final String number;
  final String listName;
  final double weight;
  final String unit;
  const priceList(
      {super.key,
      required this.number,
      required this.listName,
      required this.weight,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xffFFE500),
              ),
              child: Center(
                child: Text(
                  number.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 140,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  listName,
                  style: TextStyle(
                    color: const Color(0xff3B3636).withOpacity(.75),
                    fontSize: 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Container(
              height: 40,
              width: 170,
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9).withOpacity(.40),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      weight.toStringAsFixed(2) + unit,
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff3B3636).withOpacity(.75),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Icon(Icons.add_circle_outline),
                    const Icon(Icons.remove_circle_outline),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
      ],
    );
  }
}
