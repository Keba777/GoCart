import 'package:flutter/material.dart';
import 'package:gocart/core/theme/colors.dart';

class TextStyles {
  static const fontFamily = "Sora";

  // Title for screens
  static const TextStyle titleScreen = TextStyle(
    color: AppColors.baseBlack,
    fontSize: 34,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    height: 34 / 30,
  );

  static const TextStyle formHeading = TextStyle(
    color: AppColors.baseWhite,
    fontSize: 30,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    height: 30 / 28,
  );

  static const TextStyle formSubheading = TextStyle(
    color: AppColors.mediumGray,
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    height: 16 / 14,
  );

  static const TextStyle labelText = TextStyle(
    color: AppColors.lightGray,
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    height: 16 / 14,
  );
  static const TextStyle hintText = TextStyle(
    color: AppColors.mediumGray,
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    height: 16 / 14,
  );

  static const TextStyle buttonText = TextStyle(
    color: AppColors.baseWhite,
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    height: 16 / 14,
  );

  static const TextStyle textButtonText = TextStyle(
    color: AppColors.baseOrange,
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    height: 16 / 14,
  );

  static const TextStyle errorText = TextStyle(
    color: Colors.red,
    fontSize: 14,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    height: 14 / 12,
  );
}
