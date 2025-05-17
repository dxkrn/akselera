import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/extensions/space_extension.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tentang Ruangan',
          style: subhead1TextStyle,
          textAlign: TextAlign.left,
        ),
        8.height,
        ReadMoreText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          style: paragraph2TextStyle,
          trimLines: 2,
          colorClickableText: blue,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Selengkapnya',
          trimExpandedText: ' Lebih Sedikit',
          moreStyle: paragraph2TextStyle.copyWith(color: blue),
          lessStyle: paragraph2TextStyle.copyWith(color: blue),
        ),
        16.height,
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(
              color: black.withAlpha(30),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Parkir',
                    style: paragraph2TextStyle,
                  ),
                  Text(
                    'Gratis',
                    style: paragraph2TextStyle.copyWith(
                      color: blackText.withAlpha(160),
                    ),
                  ),
                ],
              ),
              Divider(
                color: black.withAlpha(30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Biaya',
                    style: paragraph2TextStyle,
                  ),
                  Text(
                    'Pemesanan Online',
                    style: paragraph2TextStyle.copyWith(
                      color: blackText.withAlpha(160),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
