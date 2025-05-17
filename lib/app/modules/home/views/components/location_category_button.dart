import 'package:akselera/app/routes/app_pages.dart';
import 'package:akselera/config/text_config.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationCategoryButton extends StatelessWidget {
  const LocationCategoryButton({
    super.key,
    required this.image,
    required this.label,
  });

  final String image, label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.PLACE);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(64),
            child: SizedBox(
              width: 64,
              height: 64,
              child: Image.asset(
                setImagePath(image, ImageType.png),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            label,
            style: subhead2TextStyle,
          ),
        ],
      ),
    );
  }
}
