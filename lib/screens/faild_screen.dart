import 'package:accessories_store/core/utils/app_assets.dart';

import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:accessories_store/screens/successfuly_pay_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FaildScreen extends StatefulWidget {
  const FaildScreen({super.key});

  @override
  State<FaildScreen> createState() => _FaildScreenState();
}

class _FaildScreenState extends State<FaildScreen> {
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
            SvgPicture.asset(AppAssets.orderFaild),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                AppString.orderFaild,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              AppString.payErroe,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 50,
            ),
            SvgPicture.asset(AppAssets.note),
            const SizedBox(
              height: 15,
            ),
            Text(
              AppString.dontWorry,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Colors.black,
                  ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Wrap(
                children: [
                  Center(
                    child: Text(AppString.faild1,
                        style: Theme.of(context).textTheme.displayMedium),
                  ),
                  Center(
                    child: Text(AppString.faild2,
                        style: Theme.of(context).textTheme.displayMedium),
                  ),
                  Center(
                    child: Text(AppString.faild3,
                        style: Theme.of(context).textTheme.displayMedium),
                  ),
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset(AppAssets.back),
              label: const SizedBox(
                  height: 27,
                  width: 240,
                  child: Center(child: Text(AppString.reviewPayMeth))),
            ),
            const SizedBox(
              height: 25,
            ),
            Theme(
              data: ThemeData(
                elevatedButtonTheme: elvatedStyle1(),
              ),
              child: defaultElevatedButton(
                text: AppString.pleaseHelp,
                size: 40,
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
