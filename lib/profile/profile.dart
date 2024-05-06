import 'package:flutter/material.dart';

import '../constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CookifyText(
          text: "Profile Screen",
          fontSize: 50,
        ),
      ),
    );
  }
}
