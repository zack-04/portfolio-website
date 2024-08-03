import 'package:flutter/material.dart';
import 'package:portfolio_website/globals/app_color.dart';
import 'package:portfolio_website/globals/app_text_styles.dart';

class AppButton {
  static MaterialButton buildMaterialButton({
    required VoidCallback ontap,
    required String buttonName,
  }) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 10,
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      height: 55,
      minWidth: 130,
      hoverColor: AppColors.aqua,
      splashColor: AppColors.lawGreen,
      elevation: 6,
      focusElevation: 12,
      color: AppColors.themeColor,
      onPressed: ontap,
      child: Text(
        buttonName,
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }
}
