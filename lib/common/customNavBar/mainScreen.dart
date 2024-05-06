import 'package:cookify/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../homeScreen/homescreen.dart';
import '../../meal/meal.dart';
import '../../showcase/showcaseScreen.dart';
import 'customBottomNavBar.dart';
import 'customBottomNavBarController.dart';

class MainScreen extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());

  final List<Widget> _screens = [
    HomeScreen(),
    ShowcaseScreen(),
    MealScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: navigationController.selectedIndex.value,
          children: _screens,
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
