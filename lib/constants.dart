import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0xffdf7463);
Color secondaryColor = const Color(0xfffaefed);
Color bottomNavBarContainerColor = const Color(0xffedc3bd);
Color ternaryColor = const Color(0xffc2694f);
Color blackColor = const Color(0xff000000);
Color whiteColor = Colors.white;
TextStyle cookifyTextStyle = GoogleFonts.montserrat(
  fontSize: 18,
  color: primaryColor,
  fontWeight: FontWeight.w500,
);

class CookifyText extends StatelessWidget {
  CookifyText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
  });
  final String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: fontSize ?? 12,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: textColor ?? Colors.black,
      ),
    );
  }
}
