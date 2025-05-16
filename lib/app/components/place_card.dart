import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    super.key,
    required this.image,
    required this.title,
    this.ontap,
  });

  final String image, title;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          width: 155,
          height: 138,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              SizedBox(
                width: 155,
                height: 138,
                child: Image.asset(
                  setImagePath(
                    image,
                    ImageType.png,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: 82,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      black.withAlpha(100),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  title,
                  style: paragraph2TextStyle.copyWith(color: white),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
