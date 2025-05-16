import 'package:akselera/config/text_config.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';

class LocationCategoryButton extends StatelessWidget {
  const LocationCategoryButton({
    super.key,
    required this.image,
    required this.label,
    this.ontap,
  });

  final String image, label;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
