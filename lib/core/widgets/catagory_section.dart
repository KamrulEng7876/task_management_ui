import 'package:ecommerce_task/core/constant/app_colors.dart';
import 'package:ecommerce_task/core/constant/size.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  final List<String> categories = ['All', 'Men', 'Women', 'Girls', 'Boys', 'Kids'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 40,
      height: MediaQuery.of(context).size.height*0.05,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) =>
        SizedBox(width: AppSizes.sizeBox10),
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              // You can do something with the selected category here
              // print('Selected: ${categories[index]}');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.appColor : AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(AppSizes.paddingBody),
              ),
              child: Text(
                categories[index],
                style: AppSizes.categoryItemText(context,isSelected: isSelected)
              ),
            ),
          );
        },
      ),
    );
  }
}
