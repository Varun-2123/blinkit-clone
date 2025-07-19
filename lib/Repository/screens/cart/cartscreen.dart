import 'package:blinkit_clone/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0xffF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.customText(
                          text: "Blinkit in",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Bold",
                          size: 13,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.customText(
                          text: "12 minutes",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Bold",
                          size: 25,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.customText(
                          text: "HOME",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Bold",
                          size: 14,
                        ),
                        Uihelper.customText(
                          text: " - Gher, New Delhi, India",
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          size: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 190,
                color: Colors.white.withValues(alpha: 0.2),
              ),
              Positioned(
                right: 30,
                top: 50,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16.0,
                  child: Uihelper.customImg(img: "user.png"),
                ),
              ),
              Positioned(
                bottom: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Uihelper.customTextField(controller: controller),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Uihelper.customImg(img: "shopping-cart.png"),
          SizedBox(height: 30),
          Uihelper.customText(
            text: "Reordering will be easy",
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "Bold",
            size: 18,
          ),
          Uihelper.customText(
            text: "Items you order will show up here so you can buy",
            color: Colors.black,
            fontWeight: FontWeight.normal,
            size: 12,
          ),
          Uihelper.customText(
            text: "them again easily.",
            color: Colors.black,
            fontWeight: FontWeight.normal,
            size: 12,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.customText(
                text: "Bestsellers",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Bold",
                size: 20,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  Stack(
                    children: [
                      Uihelper.customImg(img: "milk.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 65),
                        child: Uihelper.customButton(() {}),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Stack(
                    children: [
                      Uihelper.customImg(img: "potato.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 65),
                        child: Uihelper.customButton(() {}),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Stack(
                    children: [
                      Uihelper.customImg(img: "tomato.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 65),
                        child: Uihelper.customButton(() {}),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Uihelper.customText(
                    text: "Amul Taaza Toned \nFresh Milk",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    size: 9,
                    fontFamily: "Bold",
                  ),
                  SizedBox(width: 20),
                  Uihelper.customText(
                    text: "Potato (Aloo)",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    size: 9,
                    fontFamily: "Bold",
                  ),
                  SizedBox(width: 48),
                  Uihelper.customText(
                    text: "Hybrid Tomato",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    size: 9,
                    fontFamily: "Bold",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
