import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({
    super.key,
    required this.image,
    this.ontap,
  });

  final String image;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          width: 351,
          height: 186,
          child: Image.asset(
            setImagePath(
              image,
              ImageType.png,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
