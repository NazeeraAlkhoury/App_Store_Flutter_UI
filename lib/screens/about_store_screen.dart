import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutStoreScreen extends StatefulWidget {
  const AboutStoreScreen({super.key});

  @override
  State<AboutStoreScreen> createState() => _AboutStoreScreenState();
}

class _AboutStoreScreenState extends State<AboutStoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            AppAssets.chevronBackCircle,
          ),
          iconSize: 32.0,
        ),
        title: Text(
          'Mari Bosa',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.primaryColor,
              ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 15, left: 15, right: 15, top: 40),
        child: Text(
          'Mari Bosa is part of the Global Fashion Group, the world\'s leading fashion group. Founded in 2020 and dedicated to creating online fashion companies in developing countries. To date, Global Fashion Group operates in 27 countries. Global Fashion Group has a presence in Indonesia, South East, South America and Europe. Through MARI BOSA, Global Fashion Group is able to access markets in Southeast Asia, while MARI BOSA is trying to become a fashion destination in Southeast Asia.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.blackColor,
                fontSize: AppFontSize.s12,
              ),
        ),
      ),
    );
  }
}
