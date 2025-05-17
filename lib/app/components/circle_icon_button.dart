import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum CircleButtonType { outlined, fill }

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    required this.type,
    this.ontap,
  });

  final String icon;
  final void Function()? ontap;
  final CircleButtonType type;

  @override
  Widget build(BuildContext context) {
    if (type == CircleButtonType.outlined) {
      return GestureDetector(
        onTap: ontap,
        child: Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xff404040).withAlpha(200),
              width: 0.5,
            ),
          ),
          child: SvgPicture.asset(
            width: 24,
            height: 24,
            setIconPath(icon, ImageType.svg),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: ontap,
        child: Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: white.withAlpha(60),
          ),
          child: SvgPicture.asset(
            setIconPath(icon, ImageType.svg),
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(white, BlendMode.srcIn),
          ),
        ),
      );
    }
  }
}
