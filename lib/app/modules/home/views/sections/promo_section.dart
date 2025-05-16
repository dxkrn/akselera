import 'package:akselera/app/modules/home/views/components/promo_card.dart';
import 'package:akselera/config/size_config.dart';
import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/extensions/space_extension.dart';
import 'package:flutter/material.dart';

class PromoSection extends StatelessWidget {
  const PromoSection({
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Promo',
                        style: heading4TextStyle,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Kemudahan Dengan Promo',
                        style: paragraph2TextStyle,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Lihat Semua',
                      style: subhead2TextStyle.copyWith(
                        color: primaryUnion,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          18.height,
          SizedBox(
            width: deviceWidth,
            height: 186,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              children: const [
                Row(
                  spacing: 12,
                  children: [
                    PromoCard(image: 'promo-banner-2'),
                    PromoCard(image: 'promo-banner-1'),
                    PromoCard(image: 'promo-banner-3'),
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
