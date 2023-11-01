import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:flutter/cupertino.dart';

TextStyle getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontFamily: AppFontFamily.fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getBoldStyle({double fontSize = 12, required Color color}) {
  return getTextStyle(fontSize, AppFontWeight.bold, color);
}

TextStyle getRegularStyle({double fontSize = 12, required Color color}) {
  return getTextStyle(fontSize, AppFontWeight.regular, color);
}

TextStyle getSemiBoldStyle({double fontSize = 12, required Color color}) {
  return getTextStyle(fontSize, AppFontWeight.semiBold, color);
}

TextStyle getMediumStyle({double fontSize = 12, required Color color}) {
  return getTextStyle(fontSize, AppFontWeight.medium, color);
}

TextStyle getTextStylePoppins(
    double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontFamily: AppFontFamily.fontFamilyPoppins,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getTextStyleDMSans(
    double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontFamily: AppFontFamily.fontFamilyDMSans,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getRegulerPoppins({double fontSize = 12, required Color color}) {
  return getTextStylePoppins(fontSize, AppFontWeight.regular, color);
}

TextStyle getMediumPoppins({double fontSize = 12, required Color color}) {
  return getTextStylePoppins(fontSize, AppFontWeight.medium, color);
}

TextStyle getSemiBoldPoppins({double fontSize = 12, required Color color}) {
  return getTextStylePoppins(fontSize, AppFontWeight.medium, color);
}

TextStyle getRegulerDMSans({double fontSize = 12, required Color color}) {
  return getTextStyleDMSans(fontSize, AppFontWeight.regular, color);
}

TextStyle getBoldStyleDMSans({double fontSize = 12, required Color color}) {
  return getTextStyleDMSans(fontSize, AppFontWeight.bold, color);
}
