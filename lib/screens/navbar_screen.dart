import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:modern_navbar/screens/cart_screen.dart';
import 'package:modern_navbar/screens/home_screen.dart';
import 'package:modern_navbar/screens/menu_screen.dart';
import 'package:modern_navbar/screens/profile_screen.dart';
import 'package:modern_navbar/screens/promo_screen.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          height: 80,
          elevation: 0,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.menu_board), label: 'Menu'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Promos'),
            NavigationDestination(
                icon: Icon(Iconsax.shopping_cart), label: 'Cart'),
            NavigationDestination(icon: Icon(Iconsax.menu), label: 'More'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const MenuScreen(),
    const PromoScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
}
