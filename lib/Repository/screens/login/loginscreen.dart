import 'package:blinkit_clone/Repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit_clone/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});
  @override
  State<StatefulWidget> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _username = "Varun";
  final _number = "7085XXXXXX";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImg(img: "Blinkit Onboarding Screen.png"),
            SizedBox(height: 10),
            Uihelper.customImg(img: "blinkit icon.png"),
            SizedBox(
              // width: 230,
              height: 30,
              child: Uihelper.customText(
                text: "India's last minute app",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Bold",
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 15),
              child: SizedBox(
                height: 220,
                child: Card(
                  elevation: 4,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Uihelper.customText(
                          text: _username,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          size: 15,
                        ),
                        Uihelper.customText(
                          text: _number,
                          color: Color(0xff9C9C9C),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Bold",
                          size: 14,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 25,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Bottomnavscreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffE23744),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5.0,
                                      right: 4.0,
                                    ),
                                    child: Container(
                                      child: Uihelper.customText(
                                        text: "Login with ",
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        size: 14,
                                        fontFamily: "Bold",
                                      ),
                                    ),
                                  ),
                                  Uihelper.customImg(img: "zomato icon.png"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Uihelper.customText(
                          text:
                              "Access your saved addresses from Zomato automatically!",
                          color: Color(0xff9C9C9C),
                          fontWeight: FontWeight.normal,
                          size: 10,
                        ),
                        SizedBox(height: 30),
                        Uihelper.customText(
                          text: "or login with phone number",
                          color: Color(0xff269237),
                          fontWeight: FontWeight.normal,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
