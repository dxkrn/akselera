import 'package:akselera/app/components/rounded_button.dart';
import 'package:akselera/config/size_config.dart';
import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/extensions/space_extension.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          int index = controller.currIndex.value;

          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 800),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: Column(
              key: ValueKey(index),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  child: SizedBox(
                    width: deviceWidth,
                    height: 412,
                    child: Image.asset(
                      setImagePath(
                          controller.contents[index]['image']!, ImageType.png),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Text(
                        controller.contents[index]['headline']!,
                        style: heading2TextStyle,
                        textAlign: TextAlign.center,
                      ),
                      16.height,
                      Text(
                        controller.contents[index]['body']!,
                        style: paragraph1TextStyle.copyWith(
                          color: softBlackText,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      16.height,
                      DotsIndicator(
                        dotsCount: 3,
                        position: controller.currIndex.value.toDouble(),
                        decorator: DotsDecorator(
                          color: primaryUnion.withAlpha(80),
                          activeColor: primaryUnion,
                          size: const Size.square(8),
                          activeSize: const Size(24, 8),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: RoundedButton(
                    label: controller.currIndex.value < 2
                        ? 'Selanjutnya'
                        : 'Mulai Sekarang',
                    ontap: () {
                      controller.nextPage();
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
