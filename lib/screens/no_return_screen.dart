import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoReturnScreen extends StatefulWidget {
  const NoReturnScreen({super.key});

  @override
  State<NoReturnScreen> createState() => _NoReturnScreenState();
}

class _NoReturnScreenState extends State<NoReturnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(
        title: AppString.retur,
        onPres: () {
          Navigator.pushNamedAndRemoveUntil(
              context, Routes.chattingRoute, (route) => false);
        },
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset(
            AppAssets.return1,
          ),
          Text(
            AppString.noReturn,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.tertiaryColor,
                ),
          ),
        ]),
      ),
    );
  }
}
