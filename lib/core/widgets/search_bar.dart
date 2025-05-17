import 'package:ecommerce_task/core/constant/size.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded search bar container
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(AppSizes.paddingInside10),
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: AppColors.textColor),
                SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                      isDense: true, // less vertical padding inside TextField
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(width: MediaQuery.of(context).size.width * 0.02),

        // Settings icon container
        Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(AppSizes.paddingInside10),
          ),
          child: IconButton(
            icon: Icon(Icons.settings_input_component, color: AppColors.textColor),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
