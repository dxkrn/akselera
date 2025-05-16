import 'package:akselera/app/components/place_card.dart';
import 'package:akselera/config/size_config.dart';
import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/extensions/space_extension.dart';
import 'package:flutter/material.dart';

class MostVisitedSection extends StatelessWidget {
  const MostVisitedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              width: deviceWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Paling Sering Dikunjungi',
                    style: heading4TextStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Maksimalkan Bisnis Anda bersama Union Space',
                    style: paragraph2TextStyle,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          18.height,
          SizedBox(
            width: deviceWidth,
            height: 138,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              children: const [
                Row(
                  spacing: 12,
                  children: [
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
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
