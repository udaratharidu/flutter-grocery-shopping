import 'package:flutter/material.dart';

// ignore: camel_case_types
class notificationCart extends StatelessWidget {
  const notificationCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffFF9900),
        ),
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffF2E4CE),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Get 100% off on Groceries Plus T&C Apply",
              style: TextStyle(
                color: Color(0xffFF9900),
                fontSize: 15,
              ),
            ),
            Text(
              "Sped payments with master and visa",
              style: TextStyle(
                  color: const Color(0xff3B3636).withOpacity(0.47),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
