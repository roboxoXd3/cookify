import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  var selectedIndex = 0.obs; // Observable selected index
  final List<CustomBottomNavBarItemData> items = [
    CustomBottomNavBarItemData(icon: Icons.home, label: 'Home'),
    CustomBottomNavBarItemData(icon: Icons.menu_book, label: 'Showcase'),
    CustomBottomNavBarItemData(icon: Icons.fastfood_outlined, label: 'Meal'),
    CustomBottomNavBarItemData(icon: Icons.person, label: 'Settings'),
    // Add more items as needed
  ];
  void onItemTapped(int index) {
    selectedIndex.value = index; // Update selected index
    // Add additional actions here if needed
  }
}

class CustomBottomNavBarItemData {
  final IconData icon;
  final String label;
  CustomBottomNavBarItemData({
    required this.icon,
    required this.label,
  });
}
