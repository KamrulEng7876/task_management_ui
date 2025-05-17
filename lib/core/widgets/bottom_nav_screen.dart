import 'package:ecommerce_task/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../../feature/home/presentation/pages/home_screen.dart';
import '../../feature/shoping/presentation/pages/shoping_screen.dart';

class MainBottomNavScreen extends StatelessWidget {
  MainBottomNavScreen({super.key});

  // static const String name = '/main_bottom_nav_screen';

  final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  final List<Widget> screens = const [
    // Center(child: Text("🏠 Home")),
    HomeScreen(),
    // Center(child: Text("🛒 Cart")),
    ShopingScreen(),
    Center(child: Text("❤️ Wishlist")),
    Center(child: Text("📂 Account")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (context, index, _) {
          return screens[index];
        },
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (context, index, _) {
          return NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.blue.shade100,
              labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((
                states,
              ) {
                if (states.contains(WidgetState.selected)) {
                  return TextStyle(
                    color: AppColors.appColor,
                    fontWeight: FontWeight.bold,
                  );
                }
                return const TextStyle(color: Colors.grey);
              }),
              iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((
                states,
              ) {
                if (states.contains(WidgetState.selected)) {
                  return IconThemeData(color: AppColors.appColor);
                }
                return const IconThemeData(color: Colors.grey);
              }),
            ),

            child: NavigationBar(
              selectedIndex: index,
              onDestinationSelected:
                  (selected) => currentIndex.value = selected,
              destinations: [
                const NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                const NavigationDestination(
                  icon: Icon(Icons.shopping_cart_checkout),
                  label: 'Shoping',
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.favorite,
                    color: index == 3 ? AppColors.appColor : Colors.red,
                  ),
                  label: 'Wishlist',
                ),
                const NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  label: 'Account',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
