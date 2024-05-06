import 'package:cookify/common/customNavBar/mainScreen.dart';
import 'package:cookify/constants.dart';
import 'package:cookify/signup/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/widget.dart';
import '../homeScreen/homescreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/CookifyLogo.png",
                height: 300,
                width: 300,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CookifyText(
                    text: "Login ",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    textColor: primaryColor,
                  ),
                  CookifyText(
                    text: "to Enter the world of ",
                    fontSize: 18,
                  ),
                  CookifyText(
                    text: "Cookify",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    textColor: primaryColor,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: primaryColor,
                  ),
                  hintText: "Email",
                  hintStyle: cookifyTextStyle,
                  border: InputBorder.none,
                  fillColor: secondaryColor, // Set the fill color here
                  filled: true,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: secondaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: primaryColor,
                  ),
                  hintText: "Password",
                  hintStyle: cookifyTextStyle,
                  border: InputBorder.none,
                  fillColor: secondaryColor, // Set the fill color here
                  filled: true,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: secondaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: CookifyText(
                    text: "Forgot Password?",
                    textColor: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: AuthButton(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainScreen(),
                  ),
                ),
                buttonColor: primaryColor,
                child: Center(
                  child: CookifyText(
                    text: "Log In",
                    textColor: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ),
                ),
                child: CookifyText(
                  text: "I don't have an account",
                  textColor: primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
