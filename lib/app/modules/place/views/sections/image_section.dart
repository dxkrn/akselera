import 'package:akselera/config/size_config.dart';
import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/extensions/space_extension.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gambar Ruangan',
          style: subhead1TextStyle,
          textAlign: TextAlign.left,
        ),
        8.height,
        const Row(
          spacing: 8,
          children: [
            SingleImage(
              image: 'card-space-1',
            ),
            SingleImage(
              image: 'card-space-2',
            ),
            SingleImage(
              image: 'card-space-3',
            ),
            SingleImage(
              image: 'card-space-4',
              isTail: true,
            ),
          ],
        ),
      ],
    );
  }
}

class SingleImage extends StatelessWidget {
  const SingleImage({
    super.key,
    required this.image,
    this.isTail = false,
  });

  final String image;
  final bool isTail;

  @override
  Widget build(BuildContext context) {
    double imageWidth = (deviceWidth - 72) / 4;

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: imageWidth,
        height: imageWidth * 14 / 19,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              setImagePath(image, ImageType.png),
            ),
          ),
        ),
        child: isTail
            ? Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                color: black.withAlpha(160),
                child: Text(
                  '+4',
                  style: subhead3TextStyle.copyWith(color: white),
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
