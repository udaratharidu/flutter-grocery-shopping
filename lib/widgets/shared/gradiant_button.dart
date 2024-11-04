import 'package:flutter/material.dart';

// ignore: camel_case_types
class gradiantButton extends StatelessWidget {
  final Color gradiantColorOne;
  final Color gradiantColorTwo;
  final String buttonName;
  final double buttonHeight;
  final double buttonWidth;
  const gradiantButton({
    super.key,
    required this.gradiantColorOne,
    required this.gradiantColorTwo,
    required this.buttonName,
    required this.buttonHeight,
    required this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              gradiantColorOne,
              gradiantColorTwo,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
