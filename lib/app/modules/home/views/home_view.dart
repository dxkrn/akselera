import 'package:akselera/app/modules/home/views/sections/article_section.dart';
import 'package:akselera/app/modules/home/views/sections/promo_section.dart';
import 'package:akselera/config/size_config.dart';
import 'package:akselera/utils/extensions/space_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'sections/hero_section.dart';
import 'sections/location_category_section.dart';
import 'sections/most_visited_section.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SizedBox(
        width: deviceWidth,
        height: deviceHeight,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            HeroSection(controller: controller),
            10.height,
            const LocationCategorySection(),
            10.height,
            const MostVisitedSection(),
            10.height,
            const PromoSection(),
            10.height,
            const ArticleSection(),
          ],
        ),
      ),
    );
  }
}
