import 'package:ecommerce_task/core/constant/size.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback? onTap;
  final TextStyle? titleStyle;
  final TextStyle? actionStyle;

  const SectionHeader({
    super.key,
    required this.title,
    required this.actionText,
    this.onTap,
    this.titleStyle,
    this.actionStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppSizes.normalBolds(context),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionText,
            style: AppSizes.nameText(context),
          ),
        ),
      ],
    );
  }
}
