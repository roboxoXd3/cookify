import 'package:flutter/material.dart';

import '../constants.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CookifyText(
          text: "Meal Screen",
          fontSize: 50,
        ),
      ),
    );
  }
}
