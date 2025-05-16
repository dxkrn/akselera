import 'package:akselera/config/size_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:flutter/material.dart';

import '../components/location_category_button.dart';

class LocationCategorySection extends StatelessWidget {
  const LocationCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      height: 128,
      color: white,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        children: const [
          Row(
            spacing: 12,
            children: [
              LocationCategoryButton(
                image: 'location-nearest',
                label: 'Terdekat',
              ),
              LocationCategoryButton(
                image: 'location-medan',
                label: 'Medan',
              ),
              LocationCategoryButton(
                image: 'location-jakarta',
                label: 'Jakarta',
              ),
              LocationCategoryButton(
                image: 'location-bandung',
                label: 'Bandung',
              ),
              LocationCategoryButton(
                image: 'location-bali',
                label: 'Bali',
              ),
              LocationCategoryButton(
                image: 'location-jogja',
                label: 'jogja',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
