import 'package:akselera/app/modules/home/views/components/article_card.dart';
import 'package:akselera/config/size_config.dart';
import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/extensions/space_extension.dart';
import 'package:flutter/material.dart';

class ArticleSection extends StatelessWidget {
  const ArticleSection({
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
                        'Artikel',
                        style: heading4TextStyle,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Temukan berbagai artikel menarik',
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
            height: 280,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              children: const [
                Row(
                  spacing: 12,
                  children: [
                    ArticleCard(
                      image: 'article-banner-1',
                      title: 'Tips Terbaik Sewa Ruang Kantor',
                      date: '22 Des 2023 6:55 AM',
                    ),
                    ArticleCard(
                      image: 'article-banner-2',
                      title: 'Panduan Lengkap Virtual Office',
                      date: '21 Des 2023 8:52 AM',
                    ),
                    ArticleCard(
                      image: 'article-banner-3',
                      title: 'Tips Mengurus Legalitas Usaha',
                      date: '19 Des 2023 10:35 AM',
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
