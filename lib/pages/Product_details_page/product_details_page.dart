import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_page/widgets/reusable/product_details_page/price_list.dart';
import 'package:grocery_page/widgets/reusable/product_details_page/title_description.dart';
import 'package:grocery_page/widgets/shared/gradiant_button.dart';
import 'package:grocery_page/widgets/shared/notification_cart.dart';

// ignore: camel_case_types
class productDetails extends StatelessWidget {
  const productDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          "Categories",
          style: TextStyle(
            color: Color(0xff3B3636),
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const notificationCart(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFF500).withOpacity(0.29),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.card_travel,
                          size: 250,
                          color: const Color(0xff333333).withOpacity(0.75),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const titleDescriptText(
                title: "Product Information",
                descript:
                    "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              const SizedBox(
                height: 20,
              ),
              const titleDescriptText(
                title: "Product Information",
                descript:
                    "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Price List",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const priceList(
                number: "1",
                listName: "Green peas ",
                weight: 100,
                unit: "g",
              ),
              const priceList(
                number: "2",
                listName: "Brussels sprouts Brussels sprouts. ",
                weight: 100.4,
                unit: "g",
              ),
              const priceList(
                number: "3",
                listName: "Broccoli ",
                weight: 100.542,
                unit: "g",
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text(
                      "230\$",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff9E00FF),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const gradiantButton(
                gradiantColorOne: Color(0xffCC00FF),
                gradiantColorTwo: Color(0xffFFE500),
                buttonName: "Proceed To Pay",
                buttonHeight: 50,
                buttonWidth: 280,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
