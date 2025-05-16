import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoadingAnimation {
  static Future<dynamic> showLoadingAnimation() {
    return Get.dialog(
      Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: white,
              child: Center(
                child: LottieBuilder.asset(
                  setLottiePath('loading'),
                ),
              ),
            ),
          ),
        ],
      ),
      barrierDismissible: false,
      useSafeArea: false,
    );
  }
}
