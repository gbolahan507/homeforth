import 'package:flutter/material.dart';
import 'package:revieuus/export.dart';

Widget regularPoppinsText(
  BuildContext context, {
  String? text,
  Color? color,
  double? fontSize,
  double? letterSpacing,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
  final decoration,
  final fontWeight,
  final onTap,
}) {
  SizeConfig.init(context);
  return InkWell(
    onTap: onTap,
    child: Text(
      text!,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: GoogleFonts.poppins(
          color: color,
          letterSpacing: letterSpacing,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: decoration),
    ),
  );
}

Widget regularlato(
  BuildContext context, {
  String? text,
  Color? color,
  double? fontSize,
  double? letterSpacing,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
  final decoration,
  final fontWeight,
}) {
  SizeConfig.init(context);
  return Text(
    text!,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
    style: GoogleFonts.lato(
        color: color,
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: decoration),
  );
}

Widget regularnormalText(
  BuildContext context, {
  String? text,
  Color? color,
  double? fontSize,
  double? letterSpacing,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
  final decoration,
  final fontWeight,
}) {
  SizeConfig.init(context);
  return Text(
    text!,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
    style: TextStyle(
        color: color,
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: decoration),
  );
}
