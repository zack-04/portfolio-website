import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_website/globals/app_assets.dart';
import 'package:portfolio_website/globals/app_button.dart';
import 'package:portfolio_website/globals/app_color.dart';
import 'package:portfolio_website/globals/app_text_styles.dart';
import 'package:portfolio_website/globals/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.bgColor2,
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInRight(
            duration: const Duration(milliseconds: 1200),
            child: Image.asset(
              AppAssets.profile,
              width: 400,
              height: 450,
            ),
          ),
          Constants.sizedBox(width: 25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInRight(
                  duration: const Duration(milliseconds: 1200),
                  child: RichText(
                    text: TextSpan(
                      text: 'About',
                      style: AppTextStyles.headingStyles(fontsize: 30),
                      children: [
                        TextSpan(
                          text: 'Me',
                          style: AppTextStyles.headingStyles(
                            fontsize: 30,
                            color: AppColors.robinEdgeBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Constants.sizedBox(height: 6),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    'Flutter Developer!',
                    style: AppTextStyles.montserratStyle(color: Colors.white),
                  ),
                ),
                Constants.sizedBox(height: 8),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1600),
                  child: Text(
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content'
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content'
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
                    style: AppTextStyles.normalStyle(),
                  ),
                ),
                Constants.sizedBox(height: 15),
                FadeInUp(
                  duration: const Duration(milliseconds: 1800),
                  child: AppButton.buildMaterialButton(
                    ontap: () {},
                    buttonName: 'Read More',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
