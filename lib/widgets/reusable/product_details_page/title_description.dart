import 'package:flutter/material.dart';

// ignore: camel_case_types
class titleDescriptText extends StatelessWidget {
  final String title;
  final String descript;
  const titleDescriptText(
      {super.key, required this.title, required this.descript});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          descript,
          style: TextStyle(
            fontSize: 18,
            color: const Color(0xff3B3636).withOpacity(0.75),
          ),
        )
      ],
    );
  }
}
