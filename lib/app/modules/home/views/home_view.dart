import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/extensions/space_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Terhubung. Berkembang. Bersama',
              style: heading2TextStyle,
              textAlign: TextAlign.center,
            ),
            16.height,
            Text(
              'Mewakili semangat kolaborasi dan pertumbuhan komunitas profesional di Indonesia.',
              style: paragraph1TextStyle.copyWith(
                color: softBlackText,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
