import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  /*
  This style class contains all the styles
  */

  static const Color accentColor = Color(0xff46CC84);
  static const Color hintColor = Color(0xff3D3780);
  static const Color defaultColor = Colors.black;
  static const Color appColorPurple600 = Color(0xff3A3391);
  static const Color appColorPurple900 = Color(0xff150F2E);
  static const Color appColorPurple500 = Color(0xff533DB5);
  static const Color appColorPurple300 = Color(0xffA194DB);
  static const Color appColorPurple200 = Color(0xffD7D1F0);
  static const Color appColorPurple50 = Color(0xffF9F8FF);
  static const Color appColorPurple100 = Color(0xffF2F0FA);
  static const Color appColorPurple800 = Color(0xff19145C);
  static const Color appColorPurple700 = Color(0xff31246B);
  static const Color appColorGrey200 = Color(0xffEDF2F7);
  static const Color appColorGrey800 = Color(0xff282F45);
  static const Color appColorGrey400 = Color(0xffCED9E8);
  static const Color appColorGrey300 = Color(0xffE8F0FB);
  static const Color appColorGrey500 = Color(0xff9B9EA9);
  static const Color appColorGrey600 = Color(0xff6B6F7D);
  static const Color appColorGrey700 = Color(0xff43495C);
  static const Color appColorGreyForWalletLoader = Color(0xffe5e5e5);
  static const Color appColorGrey900 = Color(0xff0D152E);
  static const Color appColorGrey50 = Color(0xffFCFDFF);
  static const Color appColorWhite = Color(0xffFFFFFF);
  static const Color appColorTurq100 = Color(0xffEFFAF9);
  static const Color appColorTurq800 = Color(0xff1C5E59);
  static const Color appColorPink100 = Color(0xffFFEBF7);
  static const Color appColorPink700 = Color(0xffB8006E);
  static const Color appColorYellow700 = Color(0xffB36A05);
  static const Color appColorYellow500 = Color(0xffF99F1D);

  static const Color appColorYellow600 = Color(0xffEF8E06);
  static const Color appColorYellow100 = Color(0xffFEF6EB);
  static const Color appColorYellow50 = Color(0xffFFFDFA);
  static const Color appColorBlue700 = Color(0xff0028B8);
  static const Color appColorBlue100 = Color(0xffEBEFFF);
  static const Color appColorBlue50 = Color(0xffF8F9FE);
  static const Color appColorRed500 = Color(0xffF12A2C);
  static const Color appColorRed600 = Color(0xffB33639);
  static const Color appColorRed300 = Color(0xffFF8888);
  static const Color appColorRed50 = Color(0xffFFFAFA);
  static const Color appColorRed100 = Color(0xffFFEDED);
  static const Color appColorGreen700 = Color(0xff167932);
  static const Color appColorGreen600 = Color(0xff1C9B40);
  static const Color appColorGreen100 = Color(0xffEEFCF2);
  static const Color appColorGreen200 = Color(0xffBAF2CA);
  static const Color appColorGreen50 = Color(0xffF9FFFA);
  static const Color appColorGreen500 = Color(0xff22B94C);

  static const blue900 = Color(0xff0E1B43);
  static const blue800 = Color(0xff0D2770);

  /// Secondary colors (Green)
  static const green900 = Color(0xff0A291A);
  static const green800 = Color(0xff117B47);
  static const green700 = Color(0xff08AD5E);
  static const green600 = Color(0xff05D16E);
  static const green500 = Color(0xff0CE87F);
  static const green400 = Color(0xff3CD88C);
  static const green300 = Color(0xff72E6AE);
  static const green200 = Color(0xffACF1D0);
  static const green100 = Color(0xffE5FDF2);

  static const Color appColorErrorColor = Color(0xffD41313);
  static const Color onboardingScreenBackgroundColor = Colors.white;
  static const Color borderColor100 = Color(0XFFE8F0FB);
  static const Color borderColor200 = Color(0XFFCED9E8);

  /// errors
  static const error900 = Color(0xffAC2E0E);
  static const error100 = Color(0xffFFFAF9);

  /// Currency symbols
  static TextStyle currencySymbol({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 20,
    double height = 1.4,
  }) {
    return GoogleFonts.roboto(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Currency symbols
  static TextStyle smallNav({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 10,
    double height = 1.2,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// currency symbol for amount input field widget
  static TextStyle amountSymbol({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 16,
    double height = 1.38,
  }) {
    return GoogleFonts.roboto(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Heading 1 text
  static TextStyle h1({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 60,
    double height = 1.2,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      letterSpacing: -2,
      color: color,
    );
  }

  /// Heading 2 text
  static TextStyle h2({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 32,
    double height = 1.22,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      letterSpacing: -2,
      color: color,
    );
  }

  /// Heading 3 text
  static TextStyle h3({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 24,
    double height = 1.25,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Heading 4 text
  static TextStyle h4({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 20,
    double height = 1.4,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Heading 5 text
  static TextStyle h5({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 24,
    double height = 1.25,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Heading 6 text
  static TextStyle h6({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 20,
    double height = 1.4,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Paragraph 1 text
  static TextStyle p1({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 16,
    double height = 1.38,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Paragraph 2 text
  static TextStyle p2({
    Color? color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 14,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Paragraph 3 text
  static TextStyle p3({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 12,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Title 1 text
  static TextStyle title1({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 16,
    double height = 1.38,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Title 2 text
  static TextStyle title2({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 14,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Title 3 text
  static TextStyle title3({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 12,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Subtitle 1 text
  static TextStyle subtitle1({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 16,
    double height = 1.38,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Subtitle 2 text
  static TextStyle subtitle2({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 14,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Subtitle 3 text
  static TextStyle subtitle3({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 12,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Captions 1 text
  static TextStyle captions1({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 12,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Captions 2 text
  static TextStyle captions2({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 10,
    double height = 1.2,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
      decoration: decoration,
    );
  }

  /// Label 1 text
  static TextStyle label1({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 12,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Label 2 text
  static TextStyle label2({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 10,
    double height = 1.2,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Links text
  static TextStyle links({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 14,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: FontWeight.normal,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }
  
  /// Links text
  static TextStyle amountFont({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 14,
    double height = 1.3,
  }) {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.normal,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Button 1 text
  static TextStyle btn1({
    Color? color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 16,
    double height = 1.38,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Button 2 text
  static TextStyle btn2({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 14,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Button 3 text
  static TextStyle btn3({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 16,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Navigation Bar 1 text
  static TextStyle nav1({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 14,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Navigation Bar 2 text
  static TextStyle nav2({
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 10,
    double height = 1.2,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Navigation Bar 2 text
  static TextStyle errorMessage({
    Color color = appColorErrorColor,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 14,
    double height = 1.3,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }

  /// Navigation Bar 2 text
  static TextStyle statusChip({
    Color color = appColorErrorColor,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 10,
    double height = 1.2,
  }) {
    return GoogleFonts.dmSans(
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      color: color,
    );
  }
}
