import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  TextAlign? textAlign;
  final String? text;
  final double? fontSize;
  Color? textColor;
  FontWeight? fontWeight;
  bool? isUpperCase;
  bool? isUnderlined;
  int? maxLines;
  TextOverflow? overflow;

  CustomText({
    this.textAlign,
    this.isUnderlined,
    required this.text,
    required this.fontSize,
    this.maxLines,
    this.overflow,
    this.fontWeight = FontWeight.w500,
    this.textColor = Colors.black,
    this.isUpperCase = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      isUpperCase == true ? text!.toUpperCase() : text!,
      style: TextStyle(
        decoration: isUnderlined == true ? TextDecoration.underline : null,
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
