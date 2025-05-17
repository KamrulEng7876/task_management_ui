import 'package:ecommerce_task/core/constant/app_colors.dart';
import 'package:ecommerce_task/core/constant/size.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/catagory_section.dart';
import '../../../../core/widgets/product_screen.dart';
import '../../../../core/widgets/search_bar.dart';
import '../../../../core/widgets/section_header.dart';

class ShopingScreen extends StatefulWidget {
  const ShopingScreen({super.key});

  @override
  State<ShopingScreen> createState() => _ShopingScreenState();
}

class _ShopingScreenState extends State<ShopingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(AppSizes.paddingBody),
          child: SingleChildScrollView(
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color:AppColors.appColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                       Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "40%",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 6),
                                Text(
                                  "Get Your Special\nSale Up To",
                                  style: AppSizes.carosolTextColor(context),
                                ),

                              ],
                            )

                          ],
                        ),
                      ),
                      Container(

                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(

                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.arrow_forward),
                      )
                    ],
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
