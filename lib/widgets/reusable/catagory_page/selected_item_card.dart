import 'package:flutter/material.dart';

// ignore: camel_case_types
class selectedItem extends StatelessWidget {
  final int number;
  final String discript;
  const selectedItem({super.key, required this.number, required this.discript});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: const Color(0xffFFE500),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text(
              number.toString(),
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          width: 250,
          child: Text(
            discript,
            style: TextStyle(
              color: const Color(0xff3B3636).withOpacity(0.75),
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
