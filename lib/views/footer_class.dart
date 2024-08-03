import 'package:flutter/material.dart';
import 'package:portfolio_website/globals/app_color.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.bgColor2,
      height: 130,
      width: size.width,
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.themeColor,
          ),
          child: const Icon(
            Icons.arrow_upward,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
