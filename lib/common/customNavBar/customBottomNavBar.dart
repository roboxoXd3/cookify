// import 'package:flutter/material.dart';
//
// import 'widget.dart';
//
// class CustomBottomNavigationBar extends StatelessWidget {
//   final List<CustomBottomNavBarItem> items;
//   final int currentIndex;
//
//   const CustomBottomNavigationBar({
//     required this.items,
//     required this.currentIndex,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white24,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: items.asMap().entries.map((entry) {
//           final index = entry.key;
//           final item = entry.value;
//           return item;
//         }).toList(),
//       ),
//     );
//   }
// }

import 'package:cookify/common/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customBottomNavBarController.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final NavigationController controller = Get.find<NavigationController>();

  CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          color: Colors.white24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              controller.items.length,
              (index) {
                final item = controller.items[index];
                return CustomBottomNavBarItem(
                  icon: item.icon,
                  label: item.label,
                  isSelected: controller.selectedIndex.value == index,
                  onPressed: () => controller.onItemTapped(index),
                );
              },
            ),
          ),
        ));
  }
}
