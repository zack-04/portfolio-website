import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/globals/app_assets.dart';
import 'package:portfolio_website/globals/app_button.dart';
import 'package:portfolio_website/globals/app_color.dart';
import 'package:portfolio_website/globals/app_text_styles.dart';
import 'package:portfolio_website/globals/constants.dart';
import 'package:portfolio_website/views/about_me.dart';
import 'package:portfolio_website/views/contact_me.dart';
import 'package:portfolio_website/views/footer_class.dart';
import 'package:portfolio_website/views/my_projects.dart';
import 'package:portfolio_website/views/my_services.dart';
import 'package:portfolio_website/widgets/profile_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final socialButtons = <String>[
    AppAssets.insta,
    AppAssets.git,
    AppAssets.linkedin,
  ];
  var socialBI;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
        color: AppColors.bgColor,
        height: size.height,
        width: size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  duration: const Duration(milliseconds: 1200),
                  child: Text(
                    'Hello It\'s Me',
                    style: AppTextStyles.montserratStyle(color: Colors.white),
                  ),
                ),
                Constants.sizedBox(height: 15),
                FadeInRight(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    'Krishna Bhatia',
                    style: AppTextStyles.headingStyles(),
                  ),
                ),
                Constants.sizedBox(height: 15),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Row(
                    children: [
                      Text(
                        'And I\'m a ',
                        style:
                            AppTextStyles.montserratStyle(color: Colors.white),
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            'Flutter Developer',
                            textStyle: AppTextStyles.montserratStyle(
                                color: Colors.lightBlue),
                          ),
                          TyperAnimatedText(
                            'Student',
                            textStyle: AppTextStyles.montserratStyle(
                                color: Colors.lightBlue),
                          ),
                          TyperAnimatedText(
                            'Freelancer',
                            textStyle: AppTextStyles.montserratStyle(
                                color: Colors.lightBlue),
                          ),
                        ],
                        pause: const Duration(milliseconds: 1000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                    ],
                  ),
                ),
                Constants.sizedBox(height: 15),
                FadeInDown(
                  duration: const Duration(milliseconds: 1600),
                  child: SizedBox(
                    width: size.width * 0.5,
                    child: Text(
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
                      style: AppTextStyles.normalStyle(),
                    ),
                  ),
                ),
                Constants.sizedBox(height: 22),
                FadeInUp(
                  duration: const Duration(milliseconds: 1600),
                  child: SizedBox(
                    height: 48,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          Constants.sizedBox(width: 8),
                      itemCount: socialButtons.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              if (value) {
                                socialBI = index;
                              } else {
                                socialBI = null;
                              }
                            });
                          },
                          borderRadius: BorderRadius.circular(550),
                          hoverColor: AppColors.themeColor,
                          splashColor: AppColors.lawGreen,
                          child: buildSocialButton(
                            asset: socialButtons[index],
                            hover: socialBI == index ? true : false,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Constants.sizedBox(height: 18),
                FadeInUp(
                  duration: const Duration(milliseconds: 1800),
                  child: AppButton.buildMaterialButton(
                    ontap: () {},
                    buttonName: 'Download CV',
                  ),
                ),
              ],
            ),
            const ProfileAnimation(),
          ],
        ),
      ),
    );
  }

  Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: AppColors.themeColor),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(500),
        splashColor: AppColors.lawGreen,
        hoverColor: AppColors.aqua,
        child: Image.asset(
          asset,
          width: 10,
          height: 12,
          color: hover ? AppColors.lawGreen : AppColors.themeColor,
          // fit: BoxFit.contain,
        ),
      ),
    );
  }
}
