import 'package:flutter/material.dart';
import 'package:grocery_page/pages/Product_details_page/product_details_page.dart';
import 'package:grocery_page/pages/catagory_page/catagory_page.dart';
import 'package:grocery_page/pages/home_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Grocery App",
      home: productDetails(),
    );
  }
}
