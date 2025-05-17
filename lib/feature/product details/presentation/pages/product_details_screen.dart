import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/size.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingBody  ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Notification button
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.circular(AppSizes.paddingBody),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_backspace,
                        color: AppColors.textColor,
                      ),
                      onPressed: () {
                        // Notification pressed
                      },
                    ),
                  ),

                  // Center title
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor,
                    ),
                  ),

                  // Shopping cart button
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.circular(AppSizes.paddingBody),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.share,
                        color: AppColors.textColor,
                      ),
                      onPressed: () {
                        // Shopping bag pressed
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSizes.fontSizeSmall),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.paddingBody),
                  color: AppColors.backgroundColor,
                ),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(AppSizes.fontSizeSmall),
                          child: Image.asset(
                            'assets/images/bird.jpg',

                            height: 240,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            // Favourite button tapped
                          },
                          icon: const Icon(Icons.favorite_border),
                        ),
                      ],
                    ),

                    const SizedBox(height: 4),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           'Birds',
                    //           style: const TextStyle(fontWeight: FontWeight.w600),
                    //         ),
                    //         Row(
                    //           children: [
                    //             Text("\$160", style: AppSizes.priceText(context)),
                    //             const SizedBox(width: 6),
                    //             Text(
                    //               "\$180",
                    //               style: const TextStyle(
                    //                 decoration: TextDecoration.lineThrough,
                    //                 color: Colors.grey,
                    //                 fontSize: 12,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //
                    //     // Cart icon with onTap
                    //     Material(
                    //       color: AppColors.appColor,
                    //       borderRadius: BorderRadius.circular(AppSizes.normalPadding12),
                    //       child: InkWell(
                    //         borderRadius: BorderRadius.circular(
                    //           AppSizes.normalPadding12,
                    //         ),
                    //         onTap: () {
                    //           // 🛒 Shopping cart icon tapped
                    //           // print("Cart icon tapped");
                    //         },
                    //         child: Padding(
                    //           padding: const EdgeInsets.all(4.0),
                    //           child: const Icon(
                    //             Icons.shopping_cart_checkout,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}


