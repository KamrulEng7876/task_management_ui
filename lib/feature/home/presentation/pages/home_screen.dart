import 'package:ecommerce_task/core/constant/size.dart';
import 'package:ecommerce_task/core/widgets/catagory_section.dart';
import 'package:ecommerce_task/core/widgets/section_header.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/widgets/product_screen.dart';
import '../widgets/carosol_slider.dart';
import '../../../../core/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<int> selectedCategoryIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/profile.jpg',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello Alex", style: AppSizes.nameText(context)),
                Text("Good Morning", style: AppSizes.normalBolds(context)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Notification pressed
            },
            icon: Container(
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(AppSizes.paddingBody),
              ),
              child: IconButton(
                icon: Icon(Icons.notifications, color: AppColors.textColor),
                onPressed: () {},
              ),
            ),
          ),

          IconButton(
            onPressed: () {
              // Shopping bag pressed
            },
            icon: Container(
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(AppSizes.paddingBody),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart_checkout,
                  color: AppColors.textColor,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.paddingBody),
            child: Column(
              children: [
                SearchBarWidget(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                SectionHeader(
                  title: 'Categories',
                  actionText: 'See All',
                  onTap: () {},
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                CategorySelector(),

                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                SimpleCarousel(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                SectionHeader(title: 'Popular Product', actionText: 'See All'),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        imageUrl: "assets/images/bird.jpg",
                        name: "Cotton T-Shirt",
                        price: 69.00,
                        oldPrice: 189.00,
                      ),
                      SizedBox(width: 12),
                      ProductCard(
                        imageUrl: "assets/images/bird.jpg",
                        name: "Ladies top",
                        price: 88.00,
                        oldPrice: 150.00,
                      ), SizedBox(width: 12),
                      ProductCard(
                        imageUrl: "assets/images/bird.jpg",
                        name: "Ladies top",
                        price: 88.00,
                        oldPrice: 150.00,
                      ),
                      // Add more cards here
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
