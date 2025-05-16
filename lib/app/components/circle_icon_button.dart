import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    this.ontap,
  });

  final String icon;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
  }
}
