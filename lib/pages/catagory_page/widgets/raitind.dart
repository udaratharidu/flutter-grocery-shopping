import 'package:flutter/material.dart';

// ignore: camel_case_types
class raiting extends StatelessWidget {
  const raiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffCACACA),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.star,
                size: 35,
                color: Color(0xffFFE500),
              ),
              Icon(
                Icons.star,
                size: 35,
                color: Color(0xffFFE500),
              ),
              Icon(
                Icons.star,
                size: 35,
                color: Color(0xffFFE500),
              ),
              Icon(
                Icons.star,
                size: 35,
                color: Color(0xffFFE500),
              ),
              Icon(
                Icons.star,
                size: 35,
                color: Color(0xff3B3636),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
