import 'package:ecommerce_task/core/constant/app_colors.dart';
import 'package:ecommerce_task/core/constant/size.dart';
import 'package:ecommerce_task/feature/product%20details/presentation/pages/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;
  final double oldPrice;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return
    //   Container(
    //
    //   width: 170,
    //   padding: const EdgeInsets.all(AppSizes.fontSizeSmall),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(AppSizes.paddingBody),
    //     color: AppColors.backgroundColor,
    //   ),
    //   child: Column(
    //     children: [
    //       Stack(
    //         alignment: Alignment.topRight,
    //         children: [
    //           ClipRRect(
    //             borderRadius: BorderRadius.circular(AppSizes.fontSizeSmall),
    //             child: Image.asset(
    //               imageUrl,
    //               height: 150,
    //               width: double.infinity,
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //
    //           // Container(
    //           //   padding: const EdgeInsets.all(8),
    //           //   decoration: BoxDecoration(
    //           //     shape: BoxShape.circle,
    //           //     // color: Colors.white,
    //           //     boxShadow: [
    //           //       BoxShadow(
    //           //         color: Colors.black.withOpacity(0.1),
    //           //         blurRadius: 4,
    //           //         offset: Offset(0, 2),
    //           //       ),
    //           //     ],
    //           //   ),
    //           //   child: const Icon(Icons.favorite_border, color: Colors.black),
    //           // ),
    //           IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
    //         ],
    //       ),
    //
    //       SizedBox(height: 4),
    //
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 name,
    //                 style: const TextStyle(fontWeight: FontWeight.w600),
    //               ),
    //               Row(
    //                 children: [
    //                   Text("\$$price", style: AppSizes.priceText(context)),
    //                   const SizedBox(width: 6),
    //                   Text(
    //                     "\$$oldPrice",
    //                     style: TextStyle(
    //                       decoration: TextDecoration.lineThrough,
    //                       color: Colors.grey,
    //                       fontSize: 12,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //
    //           // SizedBox(width: 18),
    //           Container(
    //             decoration: BoxDecoration(
    //               color: AppColors.appColor,
    //               borderRadius: BorderRadius.circular(AppSizes.normalPadding12),
    //               // shape: BoxShape.circle,
    //             ),
    //             padding: const EdgeInsets.all(4),
    //             child: GestureDetector(
    //               onTap: () {
    //                 // print("Cart icon tapped");
    //               },
    //               child: Icon(
    //                 Icons.shopping_cart_checkout,
    //                 color: Colors.white,
    //               ),
    //             )
    //
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetailsScreen()),
        );
        print('Details Screen');
      },
      borderRadius: BorderRadius.circular(AppSizes.paddingBody),
      child: Container(
        width: 170,
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
                    imageUrl,
                    height: 150,
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text("\$$price", style: AppSizes.priceText(context)),
                        const SizedBox(width: 6),
                        Text(
                          "\$$oldPrice",
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Cart icon with onTap
                Material(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.circular(AppSizes.normalPadding12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(
                      AppSizes.normalPadding12,
                    ),
                    onTap: () {
                      // 🛒 Shopping cart icon tapped
                      // print("Cart icon tapped");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: const Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
