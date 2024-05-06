import 'package:cookify/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/customNavBar/customBottomNavBar.dart';
import '../common/widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CookifyText(
                  text: "Hello Den,",
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  textColor: primaryColor,
                ),
                CookifyText(
                  text: "Excited to cook something new today?",
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  textColor: blackColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: secondaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/cookedFood.png",
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CookifyText(
                              text: '''You have 12 recipes that 
you haven't tried yet''',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "See Recipes",
                              style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.underline,
                                  decorationColor: primaryColor,
                                  color: primaryColor,
                                  fontSize: 15),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    height: height / 1.85,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/chickenHandi.png"),
                          fit: BoxFit.fill),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: ternaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CookifyText(
                                text: "Non Veg",
                                textColor: whiteColor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CookifyText(
                                text: '''Handi Chicken
Bihar Special''',
                                textColor: whiteColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CookifyText(
                                text: "30 Recipes | 1 Serving",
                                textColor: whiteColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CookifyText(
                  text: "Trending Recipe",
                  textColor: blackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 500,
                  width: width,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width * 0.80,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/chickenHandi.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: Center(
                              child: Text("Hello People"),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
