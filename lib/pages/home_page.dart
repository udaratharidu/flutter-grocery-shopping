import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_page/pages/home_page/widgets/serch_bar.dart';
import 'package:grocery_page/widgets/appBar/app_bar.dart';
import 'package:grocery_page/widgets/reusable/product_card.dart';
import 'package:grocery_page/widgets/reusable/sale_and_low_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appBarLeading,
        title: appBarTitle,
        actions: appBarActions,
        shadowColor: Colors.black12,
        elevation: 3,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBox(),
              Text(
                "Explore Categories",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Vegetables",
                    descript:
                        "Vegetables are parts of plants that are consumed by humans...",
                    mainBoxColor: Color(0xff9E00FF),
                    titleColor: Colors.white,
                    descriptColor: Color(0xffC3C3C3),
                    containerColor: Color(0xff06FFA5),
                  ),
                  ProductCard(
                    title: "Fish & Meat",
                    descript:
                        "Fish is the flesh of an animal used for food, and by that definition...",
                    mainBoxColor: Color(0xff9E00FF),
                    titleColor: Colors.white,
                    descriptColor: Color(0xffC3C3C3),
                    containerColor: Color(0xff06FFA5),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Vegetables",
                    descript:
                        "Vegetables are parts of plants that are consumed by humans...",
                    mainBoxColor: Color(0xffFFE500),
                    titleColor: Color(0xff3B3636),
                    descriptColor: Color(0xff686060),
                    containerColor: Color(0xffFF9900),
                  ),
                  ProductCard(
                    title: "Fish & Meat",
                    descript:
                        "Fish is the flesh of an animal used for food, and by that definition...",
                    mainBoxColor: Color(0xffFFE500),
                    titleColor: Color(0xff3B3636),
                    descriptColor: Color(0xff686060),
                    containerColor: Color(0xffFF9900),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "For Sale and Low Costhxza ",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  saleAndLowCard(
                    titile: "Washing Liquid",
                    wheight: 200,
                    unit: "ml",
                    price: 100,
                  ),
                  saleAndLowCard(
                    titile: "Coffee and Tea",
                    wheight: 100,
                    unit: "g",
                    price: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
