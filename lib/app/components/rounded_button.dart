import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.label,
    required this.ontap,
  });

  final String label;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(56),
      color: primaryUnion,
      child: InkWell(
        borderRadius: BorderRadius.circular(56),
        splashColor: white,
        onTap: ontap,
        child: Container(
          width: double.infinity,
          height: 56,
          alignment: Alignment.center,
          child: Text(
            label,
            style: subhead1TextStyle,
          ),
        ),
      ),
    );
  }
}
