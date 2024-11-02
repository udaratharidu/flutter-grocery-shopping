import 'package:flutter/material.dart';
import 'package:grocery_page/widgets/reusable/catagory_page/catagory_card.dart';
import 'package:grocery_page/pages/catagory_page/selected_item.dart';
import 'package:grocery_page/widgets/shared/notification_cart.dart';

class catagoryPage extends StatelessWidget {
  const catagoryPage({super.key});

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              notificationCart(),
              SizedBox(
                height: 20,
              ),
              Text(
                "All Categories",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      catagoryCard(
                        title: "Vegetables & \nFruits",
                        discription: "20+ more ...",
                        mainBoxColur: Color(0xff0057FF),
                        mainBorderColor: Color(0xff0094FF),
                        circulColor: Color(0xff0E00AC),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      catagoryCard(
                        title: "Vegetables & \nFruits",
                        discription: "20+ more ...",
                        mainBoxColur: Color(0xffFF3D00),
                        mainBorderColor: Color(0xffFFA800),
                        circulColor: Color(0xffE56C6C),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      catagoryCard(
                        title: "Cooking & \nElements",
                        discription: "10+ more ...",
                        mainBoxColur: Color(0xff00E0FF),
                        mainBorderColor: Color(0xff00F0FF),
                        circulColor: Color(0xff10C0F8),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      catagoryCard(
                        title: "Bites& \nDrinks",
                        discription: "10+ more ...",
                        mainBoxColur: Color(0xff70FF00),
                        mainBorderColor: Color(0xff00FF29),
                        circulColor: Color(0xff06FFA5),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      catagoryCard(
                        title: "Chicken& \nBeef",
                        discription: "20+ more ...",
                        mainBoxColur: Color(0xffFFF500),
                        mainBorderColor: Color(0xffFFB800),
                        circulColor: Color(0xffFF9900),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      catagoryCard(
                        title: "Transport& \nVehicles",
                        discription: "2+ more ...",
                        mainBoxColur: Color(0xffDB00FF),
                        mainBorderColor: Color(0xffDB00FF),
                        circulColor: Color(0xffDB00FF),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Selected Items",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              itemCard(),
            ],
          ),
        ),
      ),
    );
  }
}
