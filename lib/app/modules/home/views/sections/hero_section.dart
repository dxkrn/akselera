import 'package:akselera/app/components/circle_icon_button.dart';
import 'package:akselera/app/modules/home/controllers/home_controller.dart';
import 'package:akselera/app/modules/home/views/components/home_banner_card.dart';
import 'package:akselera/config/size_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 280,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 212,
              child: Image.asset(
                setImagePath('banner-home', ImageType.png),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: deviceWidth,
              height: 180,
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      onPageChanged: (value) {
                        controller.cardBannerIndex.value = value;
                      },
                      children: const [
                        HomeBannerCard(image: 'card-banner-home-1'),
                        HomeBannerCard(image: 'card-banner-home-2'),
                        HomeBannerCard(image: 'card-banner-home-3'),
                      ],
                    ),
                  ),
                  Obx(
                    () => DotsIndicator(
                      dotsCount: 3,
                      position: controller.cardBannerIndex.value.toDouble(),
                      decorator: DotsDecorator(
                        color: primaryUnion.withAlpha(80),
                        activeColor: primaryUnion,
                        size: const Size.square(8),
                        activeSize: const Size(24, 8),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 26,
                  child: Image.asset(
                    setImagePath('logo-horizontal', ImageType.png),
                  ),
                ),
                const CircleIconButton(
                  icon: 'icon-help',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
