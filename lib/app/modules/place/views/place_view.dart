import 'package:akselera/app/components/circle_icon_button.dart';
import 'package:akselera/app/components/place_card.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/place_controller.dart';

class PlaceView extends GetView<PlaceController> {
  const PlaceView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F7),
        surfaceTintColor: greenBg,
        leading: const SizedBox(),
        leadingWidth: 0,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleIconButton(
                type: CircleButtonType.outlined,
                icon: 'icon-arrow-left',
                ontap: () => Get.back(),
              ),
              const CircleIconButton(
                  type: CircleButtonType.outlined, icon: 'icon-edit'),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          childAspectRatio: 155 / 138,
          crossAxisCount: 2,
          padding: const EdgeInsets.all(24),
          mainAxisSpacing: 18,
          crossAxisSpacing: 12,
          children: const [
            PlaceCard(
              image: 'card-place-1',
              title: 'Menara Batavia',
            ),
            PlaceCard(
              image: 'card-place-2',
              title: 'Treasury Tower',
            ),
            PlaceCard(
              image: 'card-place-3',
              title: 'PIK Avenue',
            ),
            PlaceCard(
              image: 'card-place-1',
              title: 'Menara Batavia',
            ),
            PlaceCard(
              image: 'card-place-2',
              title: 'Treasury Tower',
            ),
            PlaceCard(
              image: 'card-place-3',
              title: 'PIK Avenue',
            ),
            PlaceCard(
              image: 'card-place-1',
              title: 'Menara Batavia',
            ),
            PlaceCard(
              image: 'card-place-2',
              title: 'Treasury Tower',
            ),
            PlaceCard(
              image: 'card-place-3',
              title: 'PIK Avenue',
            ),
            PlaceCard(
              image: 'card-place-1',
              title: 'Menara Batavia',
            ),
          ],
        ),
      ),
    );
  }
}
