import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:akselera/config/theme_config.dart';

class TextConfig {
  // NOTE: Heading Styles
  static TextStyle heading1TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w800,
    color: blackText,
    fontSize: 30.sp,
  );

  static TextStyle heading2TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: blackText,
    fontSize: 24.sp,
  );

  static TextStyle heading3TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: blackText,
    fontSize: 20.sp,
  );

  static TextStyle heading34TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: blackText,
    fontSize: 18.sp,
  );

  static TextStyle heading4TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: blackText,
    fontSize: 16.sp,
  );

  static TextStyle heading5TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: blackText,
    fontSize: 14.sp,
  );

  // NOTE: Sub Body
  static TextStyle subhead1TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: blackText,
    fontSize: 18.sp,
  );

  static TextStyle subhead1AltTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: blackText,
    fontSize: 16.sp,
  );

  static TextStyle subhead2TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: blackText,
    fontSize: 14.sp,
  );

  static TextStyle subhead3TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: blackText,
    fontSize: 12.sp,
  );

  // NOTE: Content
  static TextStyle paragraph1TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    color: blackText,
    fontSize: 16.sp,
  );

  static TextStyle paragraph2TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    color: blackText,
    fontSize: 14.sp,
  );

  static TextStyle paragraph3TextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    color: blackText,
    fontSize: 12.sp,
  );
}

// NOTE: Getters
TextStyle get heading1TextStyle => TextConfig.heading1TextStyle;
TextStyle get heading2TextStyle => TextConfig.heading2TextStyle;
TextStyle get heading3TextStyle => TextConfig.heading3TextStyle;
TextStyle get heading34TextStyle => TextConfig.heading34TextStyle;
TextStyle get heading4TextStyle => TextConfig.heading4TextStyle;
TextStyle get heading5TextStyle => TextConfig.heading5TextStyle;

TextStyle get subhead1TextStyle => TextConfig.subhead1TextStyle;
TextStyle get subhead1AltTextStyle => TextConfig.subhead1AltTextStyle;
TextStyle get subhead2TextStyle => TextConfig.subhead2TextStyle;
TextStyle get subhead3TextStyle => TextConfig.subhead3TextStyle;

TextStyle get paragraph1TextStyle => TextConfig.paragraph1TextStyle;
TextStyle get paragraph2TextStyle => TextConfig.paragraph2TextStyle;
TextStyle get paragraph3TextStyle => TextConfig.paragraph3TextStyle;
