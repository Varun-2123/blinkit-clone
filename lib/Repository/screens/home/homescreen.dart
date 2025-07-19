import 'package:blinkit_clone/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController controller = TextEditingController();
  var firstrow = [
    {"text": "Lights, Diyas& \nCandles", "img": "image 50.png"},
    {"text": "Diwali \nGifts", "img": "image 51.png"},
    {"text": "Appliances& \nGadgets", "img": "image 52.png"},
    {"text": "Home& \nLiving", "img": "image 53.png"},
  ];
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45.png", "text": "Biscuits & \nBakery"},
  ];
  var secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];
  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"},
  ];
  var household = [
    {"img": "image 36.png", "text": "Cleaners &\nRepellents"},
    {"img": "image 37.png", "text": "Bath & Body"},
    {"img": "image 38.png", "text": "Perfumes &\nDeodorants"},
    {"img": "image 39.png", "text": "Home &\n Lifestyle"},
    {"img": "image 40.png", "text": "Hair Care"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  color: Color(0xffEC0505),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.customText(
                            text: "Blinkit in",
                            color: Colors.white,
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
                            color: Colors.white,
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
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Bold",
                            size: 14,
                          ),
                          Uihelper.customText(
                            text: " - Gher, New Delhi, India",
                            color: Colors.white,
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
                    backgroundColor: Colors.black,
                    radius: 16.0,
                    child: Uihelper.customImg(img: "user 2.png"),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 15,
                  child: Uihelper.customTextField(controller: controller),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Container(
                height: 250,
                color: Color.fromARGB(255, 248, 45, 45),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      color: Color.fromARGB(255, 248, 45, 45),
                      child: Stack(
                        children: [
                          Center(
                            child: Uihelper.customText(
                              text: "Mega Festive Sale",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              size: 25,
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: Uihelper.customImg(img: "image 60.png"),
                          ),
                          Positioned(
                            child: Uihelper.customImg(img: "image 56.png"),
                          ),
                          Positioned(
                            right: 0,
                            child: Uihelper.customImg(img: "image 55.png"),
                          ),
                          Positioned(
                            right: 40,
                            child: Uihelper.customImg(img: "image 61.png"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEAD3D3),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  Uihelper.customText(
                                    text: firstrow[index]["text"].toString(),
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Bold",
                                    size: 12,
                                  ),
                                  SizedBox(height: 8),
                                  Uihelper.customImg(
                                    img: firstrow[index]["img"].toString(),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: firstrow.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    Stack(
                      children: [
                        Uihelper.customImg(img: "image 54.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: Uihelper.customButton(() {}),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Stack(
                      children: [
                        Uihelper.customImg(img: "image 57.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: Uihelper.customButton(() {}),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Stack(
                      children: [
                        Uihelper.customImg(img: "image 63.png"),
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
                      text: "Golden Glass \nWooden Lid \nCandle",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      size: 9,
                      fontFamily: "Bold",
                    ),
                    SizedBox(width: 47),
                    Uihelper.customText(
                      text: "Royal Gulab Jamun \nBy Bikano",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      size: 9,
                      fontFamily: "Bold",
                    ),
                    SizedBox(width: 13),
                    Uihelper.customText(
                      text: "Bikaji Bhujia",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      size: 9,
                      fontFamily: "Bold",
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Uihelper.customText(
                      text: "Grocery & Kitchen",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Bold",
                      size: 18,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffD9EBEB),
                                ),
                                child: Uihelper.customImg(
                                  img: grocerykitchen[index]["img"].toString(),
                                ),
                              ),
                              Uihelper.customText(
                                text: grocerykitchen[index]["text"].toString(),
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                size: 12,
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: grocerykitchen.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffD9EBEB),
                                ),
                                child: Uihelper.customImg(
                                  img: secondgrocery[index]["img"].toString(),
                                ),
                              ),
                              Uihelper.customText(
                                text: secondgrocery[index]["text"].toString(),
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                size: 12,
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: secondgrocery.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),

                Row(
                  children: [
                    SizedBox(width: 20),
                    Uihelper.customText(
                      text: "Snacks & Drinks",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Bold",
                      size: 18,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffD9EBEB),
                                ),
                                child: Uihelper.customImg(
                                  img: snacksanddrinks[index]["img"].toString(),
                                ),
                              ),
                              Uihelper.customText(
                                text: snacksanddrinks[index]["text"].toString(),
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                size: 12,
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: snacksanddrinks.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),

                Row(
                  children: [
                    SizedBox(width: 20),
                    Uihelper.customText(
                      text: "Household Essentials",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Bold",
                      size: 18,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffD9EBEB),
                                ),
                                child: Uihelper.customImg(
                                  img: household[index]["img"].toString(),
                                ),
                              ),
                              Uihelper.customText(
                                text: household[index]["text"].toString(),
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                size: 12,
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: snacksanddrinks.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
