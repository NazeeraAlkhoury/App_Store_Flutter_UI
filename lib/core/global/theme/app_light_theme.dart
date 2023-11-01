import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';

import 'package:accessories_store/core/utils/app_size.dart';
import 'package:flutter/material.dart';

ThemeData getThemeDataLight() => ThemeData(
      primarySwatch: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.scaffoldColor,
      //AppBar
      appBarTheme: AppBarTheme(
        elevation: AppSize.v0,
        backgroundColor: AppColors.appBarColor,
        centerTitle: true,
        titleTextStyle: getBoldStyle(
          color: AppColors.tertiaryColor,
          fontSize: AppFontSize.s15,
        ).copyWith(letterSpacing: -0.24),
      ),

      //texttheme
      textTheme: TextTheme(
        titleLarge: getBoldStyle(
          fontSize: AppFontSize.s28,
          color: AppColors.tertiaryColor,
        ).copyWith(letterSpacing: 0.36),
        titleMedium: getRegularStyle(
          color: AppColors.primaryColor,
          fontSize: AppFontSize.s15,
        ).copyWith(letterSpacing: -0.24),
        bodySmall: getRegularStyle(
            color: AppColors.tertiaryColor, fontSize: AppFontSize.s11),
        bodyMedium: getBoldStyle(
            color: AppColors.tertiaryColor, fontSize: AppFontSize.s11),
        displayLarge: getSemiBoldStyle(
          color: AppColors.tertiaryColor,
          fontSize: AppFontSize.s17,
        ).copyWith(
          letterSpacing: -0.41,
        ),
        displayMedium: getSemiBoldStyle(
          color: AppColors.tertiaryColor,
          fontSize: AppFontSize.s13,
        ).copyWith(
          letterSpacing: -0.08,
        ),
        labelMedium: getRegularStyle(
                color: AppColors.tertiaryColor, fontSize: AppFontSize.s17)
            .copyWith(
          letterSpacing: -0.41,
        ),
        headlineMedium: getMediumPoppins(
          color: AppColors.tertiaryColor,
          fontSize: AppFontSize.s18,
        ),
        headlineSmall: getRegulerPoppins(
          color: AppColors.tertiaryColor,
          fontSize: AppFontSize.s14,
        ),
      ),

      //formfieldtheme
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: getRegularStyle(
          color: AppColors.tertiaryColor.withOpacity(.3),
          fontSize: 17,
        ),

        labelStyle: getRegularStyle(
          color: AppColors.tertiaryColor,
          fontSize: 17,
        ),
        prefixStyle: getRegularStyle(
                color: AppColors.tertiaryColor, fontSize: AppFontSize.s17)
            .copyWith(
          letterSpacing: -0.41,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.tertiaryColor.withOpacity(.3),
          ),
        ),
        //  prefixIconColor: AppColors.tertiaryColor,
      ),

      //ElevatedButton

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(305, 44),
          textStyle: getRegularStyle(
            color: AppColors.elevtextColor,
            fontSize: AppFontSize.s13,
          ),
          alignment: Alignment.centerRight,
          elevation: AppSize.v0,
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),

      //divider
      dividerTheme: DividerThemeData(
        color: AppColors.dividerColor1,
        thickness: 1,
      ),
      //  iconTheme
      // iconTheme: IconThemeData(
      //   color: AppColors.tertiaryColor,
      //   size: AppSize.iconSize,
      // ),

      //textButton
      // textButtonTheme: TextButtonThemeData(
      //   style: ButtonStyle(
      //     textStyle: MaterialStateProperty.all<TextStyle>(
      //       getBoldStyle(
      //           color: AppColors.tertiaryColor, fontSize: AppFontSize.s13),
      //     ),
      //   ),
      // ),

      //checkBox
      // checkboxTheme: CheckboxThemeData(
      //   checkColor: MaterialStateProperty.resolveWith<Color>(
      //     (states) => Colors.black,
      //   ),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(4.0),
      //     side: BorderSide(
      //       color: AppColors.tertiaryColor,
      //     ),
      //   ),
      //   fillColor: MaterialStateProperty.resolveWith<Color>(
      //     (states) =>
      //         //  if(states.contains(MaterialState.selected)){
      //         //return
      //         Colors.white
      //     // }
      //     // return null;
      //     ,
      //   ),
      // ),
    );

//  textTheme: TextTheme(

//         headline6:
//             getMediumStyle(color: Colors.black, fontsize: AppFontSize.s14),
//         // عنوان onboarding
//         subtitle2: getBoldStyle(
//           color: AppColorsLight.primaryColor,
//           fontsize: AppFontSize.s24,
//         ),

//         // body onboarder
//         bodyText1: getRegularStyle(
//           color: Colors.black,
//           fontsize: AppFontSize.s16,
//         ),

//       ),

// TextButtonTheme
// textButtonTheme: TextButtonThemeData(
//   style: TextButton.styleFrom(
//     textStyle: getMediumStyle(
//       color: AppColorsLight.primaryColor,
//       fontsize: AppFontSize.s14,
//     ),
//   ),
// ),

//elevatedBottun Theme
// elevatedButtonTheme: ElevatedButtonThemeData(
//   style: ElevatedButton.styleFrom(
//     minimumSize: const Size(346, 43),
//     textStyle: getRegularStyle(
//       color: AppColorsLight.white,
//       fontsize: AppFontSize.s18,
//     ),
//     elevation: AppElevation.e0,
//     backgroundColor: AppColorsLight.primaryColor,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(
//         AppSize.s10,
//       ),
//     ),
//   ),
// ),
