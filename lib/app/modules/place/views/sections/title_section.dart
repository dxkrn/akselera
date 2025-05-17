import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/extensions/space_extension.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Treasury Tower',
          style: heading3TextStyle,
          textAlign: TextAlign.left,
        ),
        8.height,
        Row(
          children: [
            SvgPicture.asset(
              setIconPath('icon-location', ImageType.svg),
            ),
            4.width,
            Text(
              'Jl. Jend Sudirman - No.25 Medan',
              style: paragraph3TextStyle.copyWith(
                color: blue,
              ),
            )
          ],
        ),
        8.height,
        Row(
          children: [
            SvgPicture.asset(
              setIconPath('icon-star', ImageType.svg),
            ),
            4.width,
            Text(
              '4.9',
              style: subhead2TextStyle,
            ),
            8.width,
            Text(
              '1.2k Ulasan',
              style: paragraph3TextStyle.copyWith(
                color: softBlackText,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
        8.height,
        Row(
          spacing: 16,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: greenBg,
                border: Border.all(color: green, width: 1),
                borderRadius: BorderRadius.circular(64),
              ),
              child: Text(
                'Available',
                style: paragraph2TextStyle.copyWith(
                  color: green,
                ),
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  setIconPath('icon-route', ImageType.svg),
                ),
                4.width,
                Text(
                  '1,4 km',
                  style: subhead2TextStyle,
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  setIconPath('icon-time', ImageType.svg),
                ),
                4.width,
                Text(
                  '7 mins',
                  style: subhead2TextStyle,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
