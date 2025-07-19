import 'package:blinkit_clone/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Printerscreen extends StatefulWidget {
  const Printerscreen({super.key});

  @override
  State<Printerscreen> createState() => _PrinterscreenState();
}

class _PrinterscreenState extends State<Printerscreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF0CE),
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
          SizedBox(height: 60),
          Center(
            child: Uihelper.customText(
              text: "Print Store",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              size: 42,
              fontFamily: "BOld",
            ),
          ),
          Center(
            child: Uihelper.customText(
              text: "Blinkit ensures secure prints at every stage",
              color: Color(0xff9C9C9C),
              fontWeight: FontWeight.bold,
              size: 14,
              fontFamily: "BOld",
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.customText(
                            text: "Documents",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            size: 18,
                            fontFamily: "Bold",
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 12),
                          Uihelper.customText(
                            text: "✦",
                            color: Color(0xff9C9C9C),
                            fontWeight: FontWeight.bold,
                            size: 14,
                            fontFamily: "Bold",
                          ),
                          SizedBox(width: 10),
                          Uihelper.customText(
                            text: "Price starting at rs 3/page",
                            color: Color(0xff9C9C9C),
                            fontWeight: FontWeight.bold,
                            size: 14,
                            fontFamily: "Bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 12),
                          Uihelper.customText(
                            text: "✦",
                            color: Color(0xff9C9C9C),
                            fontWeight: FontWeight.bold,
                            size: 14,
                            fontFamily: "Bold",
                          ),
                          SizedBox(width: 10),
                          Uihelper.customText(
                            text: "Paper quality: 70 GSM",
                            color: Color(0xff9C9C9C),
                            fontWeight: FontWeight.bold,
                            size: 14,
                            fontFamily: "Bold",
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          SizedBox(width: 12),
                          Uihelper.customText(
                            text: "✦",
                            color: Color(0xff9C9C9C),
                            fontWeight: FontWeight.bold,
                            size: 14,
                            fontFamily: "Bold",
                          ),
                          SizedBox(width: 10),
                          Uihelper.customText(
                            text: "Single side prints",
                            color: Color(0xff9C9C9C),
                            fontWeight: FontWeight.bold,
                            size: 14,
                            fontFamily: "Bold",
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff27AF34),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Uihelper.customText(
                          text: "Upload Files",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          size: 15,
                          fontFamily: "Bold",
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    right: 30,
                    child: Uihelper.customImg(img: "image 62.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
