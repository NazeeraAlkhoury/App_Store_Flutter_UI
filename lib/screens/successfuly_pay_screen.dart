import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_size.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SuccessfullyPayScreen extends StatefulWidget {
  const SuccessfullyPayScreen({super.key});

  @override
  State<SuccessfullyPayScreen> createState() => _SuccessfullyPayScreenState();
}

class _SuccessfullyPayScreenState extends State<SuccessfullyPayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(
        title: AppString.ordercomplete,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(AppAssets.done),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                AppString.paymentsuccess,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              AppString.orderarrive,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 200,
            ),
            defaultElevatedButton(
              text: AppString.seeOrder,
              asset: AppAssets.next,
              size: 40,
              onPressed: () {
                Navigator.pushNamed(context, Routes.faildRoute);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            Theme(
              data: ThemeData(
                elevatedButtonTheme: elvatedStyle1(),
              ),
              child: defaultElevatedButton(
                text: AppString.continueshopping,
                size: 50,
              ),
            ),
            const SizedBox(
              height: 34,
            ),
          ],
        ),
      ),
    );
  }
}

ElevatedButtonThemeData elvatedStyle1() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(305, 44),
        textStyle: getRegularStyle(
          color: AppColors.elevtextColor,
          fontSize: AppFontSize.s13,
        ),
        alignment: Alignment.centerRight,
        elevation: AppSize.v0,
        backgroundColor: AppColors.tertiaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
