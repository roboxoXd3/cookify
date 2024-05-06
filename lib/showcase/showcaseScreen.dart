import 'package:cookify/constants.dart';
import 'package:flutter/material.dart';

class ShowcaseScreen extends StatelessWidget {
  const ShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: width * 0.75,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 16.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.search,
                              color: Color(0xff444444),
                            ),
                            const SizedBox(
                              width: 7.0,
                            ),
                            CookifyText(
                              text: "Search",
                              fontSize: 18,
                              textColor: const Color(0xff444444),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffF5D3CF),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      child: Image.asset(
                        "assets/images/SPOONFOCKICON.png",
                        height: 30,
                        width: 30,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row()
              ],
            ),
          ),
        ));
  }
}
