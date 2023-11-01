import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  static const MaterialColor primaryColor = MaterialColor(0xFFB5838D, {
    50: Color(0xFFF5ECED),
    100: Color(0xFFE4CDD0),
    200: Color(0xFFD2AEB2),
    300: Color(0xFFC08F94),
    400: Color(0xFFB5838D),
    500: Color(0xFFA16E7E),
    600: Color(0xFF8B5A6F),
    700: Color(0xFF75465F),
    800: Color(0xFF603F54),
    900: Color(0xFF4C3649),
  });

  static Color secondaryColor = HexColor('#E5989B');
  static Color tertiaryColor = HexColor('#6D6875');

  static Color quaternaryColor = HexColor('#FFB4A2');
  static Color quinaryColor = HexColor('#FFCDB2');

  static Color startPageColor = HexColor('#FFCDB2');

  static Color appBarColor = Colors.white;
  static Color scaffoldColor = Colors.white;
  static Color elevtextColor = HexColor('#FFFFFF');
  static Color faceElevateColor = HexColor('#3C79E6');
  static Color dividerColor1 = HexColor('#F3F6F8');
  static Color dividerColor2 = HexColor('#777777');
  static Color catColor = Colors.black;
  static Color brandColor = HexColor('#A4A4A4');

  static Color blackColor = Colors.black;
  static Color whiteColor = Colors.white;

  static Color stepTextColor = HexColor('#C8C8C8');

  static Color payColor = HexColor('#EEEEEE');

  static Color chatAdminColor = HexColor('#E9E9EB');
  static Color chatUserColor = HexColor('#007AFF');
}
