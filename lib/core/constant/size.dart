import 'dart:ui';

import 'package:ecommerce_task/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppSizes{
  static const double sizeBox = 6;
  static const double sizeBox10 = 10;
  static const double normalPadding = 8;
  static const double normalPadding12 = 12;
  static const double paddingBody = 16;
  static const double paddingInside10 = 10;
  //  for Font Size
  static const double fontSize2 = 2;
  static const double fontSizeExtraSmall = 10;
  static const double fontSizeSmall = 12;
  static const double fontSizeDefault = 14;
  static const double fontSizeLarge = 16;
  static const double fontSizeExtraLarge = 18;
  static const double fontSizeOverLarge = 24;
  static const double fontSizeMaxLarge = 30;

//   text
  static TextStyle categoryItemText(BuildContext context, {required bool isSelected}) {
    return Theme.of(context).textTheme.titleSmall!.copyWith(
      color: isSelected ? Colors.white : Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    );
  }

  static TextStyle nameText(context) => Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w800, fontSize: 14,color: AppColors.nameColor); // 10,  400
  static TextStyle priceText(context) => Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w800, fontSize: 14,color: AppColors.appColor); // 10,  400

  static TextStyle normalSize(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400,fontSize: 16,); // 14,  700
  static TextStyle normalTextBold(context) => Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w400, fontSize: 20,color: AppColors.backgroundColor); // 20,  500

  static TextStyle normalBold(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400,fontSize: 20); // 14,  700
  static TextStyle vbigBold(context) => Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w800, fontSize: 20); // 20,  500
  static TextStyle normalBoldLeading(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w800,fontSize: 16,color: AppColors.leadingTColor); // 14,  700
  static TextStyle xsmallLight(context) => Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600, fontSize: 14,color: AppColors.textColor); // 10,  400
  static TextStyle carosolTextColor(context) => Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600, fontSize: 18,color: AppColors.carosolTextColor); // 10,  400
  static TextStyle normalBolds(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600,fontSize: 16,); // 14,  700
  static TextStyle bolds(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w800,fontSize: 16,); // 14,  700
  static TextStyle hadingTextBold(context) => Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w800, fontSize: 20,color: AppColors.backgroundColor); // 20,  500
}