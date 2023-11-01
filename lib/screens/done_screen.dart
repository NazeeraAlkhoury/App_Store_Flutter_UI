import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(AppAssets.done),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                AppString.phoneverifed,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              AppString.configSuccess,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 250,
            ),
            defaultElevatedButton(
              text: AppString.done,
              asset: AppAssets.next,
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.homeRoute, (route) => false);
              },
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
