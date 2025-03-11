import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextOverflow overflow;
  final int maxLines;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final double letterSpacing;

  const TextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    this.color = Colors.white,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    this.textAlign = TextAlign.start,
    this.fontWeight = FontWeight.normal,
    this.letterSpacing = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize.sp,
        color: color,
        overflow: overflow,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
