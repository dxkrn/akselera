import 'package:akselera/app/components/circle_icon_button.dart';
import 'package:akselera/app/components/rounded_button.dart';
import 'package:akselera/app/modules/place/views/sections/location_section.dart';
import 'package:akselera/config/size_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/extensions/space_extension.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/place_controller.dart';
import 'sections/about_section.dart';
import 'sections/image_section.dart';
import 'sections/title_section.dart';

class PlaceDetailView extends GetView<PlaceController> {
  const PlaceDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: black,
        foregroundColor: white,
        leading: const SizedBox(),
        leadingWidth: 0,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleIconButton(
                type: CircleButtonType.fill,
                icon: 'icon-arrow-left',
                ontap: () => Get.back(),
              ),
              const Row(
                spacing: 8,
                children: [
                  CircleIconButton(
                      type: CircleButtonType.fill, icon: 'icon-favorite'),
                  CircleIconButton(
                      type: CircleButtonType.fill, icon: 'icon-send'),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SizedBox(
        width: deviceWidth,
        height: deviceHeight,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 336,
              child: Image.asset(
                setImagePath('card-place-2', ImageType.png),
                fit: BoxFit.cover,
              ),
            ),
            24.height,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TitleSection(),
            ),
            24.height,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: AboutSection(),
            ),
            16.height,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ImageSection(),
            ),
            16.height,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: LocationSection(),
            ),
            128.height,
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.all(24),
        color: white,
        child: RoundedButton(
          label: 'Pesan Sekarang',
          ontap: () {},
        ),
      ),
    );
  }
}
