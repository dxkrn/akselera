import 'package:akselera/config/size_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';

class HomeBannerCard extends StatelessWidget {
  const HomeBannerCard({
    super.key,
    required this.image,
    this.ontap,
  });

  final String image;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: deviceWidth,
        height: 140,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: black.withAlpha(25),
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(
                setImagePath(image, ImageType.png),
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
