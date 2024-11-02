import 'package:flutter/material.dart';
import 'package:grocery_page/pages/catagory_page/widgets/raitind.dart';
import 'package:grocery_page/widgets/reusable/catagory_page/selected_item_card.dart';

// ignore: camel_case_types
class itemCard extends StatelessWidget {
  const itemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffE0DCD6).withOpacity(0.29),
        border: Border.all(
          color: const Color(0xffE0DCD6).withOpacity(0.5),
          width: 10,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Vegetables",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            selectedItem(
              number: 1,
              discript:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            selectedItem(
              number: 2,
              discript:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            selectedItem(
              number: 3,
              discript:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            selectedItem(
              number: 4,
              discript:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            SizedBox(
              height: 10,
            ),
            raiting(),
          ],
        ),
      ),
    );
  }
}
