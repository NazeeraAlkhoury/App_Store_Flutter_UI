import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  List<String> title = [
    'Orders History',
    'My address',
    'My wallets',
    'Settings',
    'Chat With Store',
    'About Store',
    'Log out',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: SizedBox(
                height: 125,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      AppAssets.chevronBackCircle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 80,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Image.asset(
                            AppAssets.profile2,
                          ),
                          InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: AppColors.primaryColor,
                              radius: 20,
                              child: SvgPicture.asset(
                                AppAssets.camera,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Text(
                'Ranim Omar',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Center(
              child: Text(
                'ranem.omarr@gmail.com',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 16,
                    ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  onTap: (() {
                    if (index == 0) {
                      Navigator.pushNamed(context, Routes.orderHistoryRoute);
                    }
                    if (index == 4) {
                      Navigator.pushNamed(context, Routes.chattingRoute);
                    }
                    if (index == 5) {
                      Navigator.pushNamed(context, Routes.aboutStoreRoute);
                    }
                    if (index == title.length - 1) {
                      showDialog(
                        barrierColor: AppColors.primaryColor.withOpacity(.2),
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Padding(
                            padding: const EdgeInsets.only(
                              bottom: 7,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              AppString.logOut,
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ),
                          content: Text(
                            AppString.qLogOut,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(letterSpacing: -0.08, fontSize: 13),
                          ),
                          actions: [
                            CupertinoActionSheetAction(
                              isDestructiveAction: true,
                              onPressed: () {},
                              child: Text(
                                AppString.yes,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: AppColors.tertiaryColor,
                                    ),
                              ),
                            ),
                            CupertinoActionSheetAction(
                              isDefaultAction: true,
                              onPressed: () {},
                              child: Text(
                                AppString.cancel,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: AppColors.tertiaryColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  }),
                  title: Text(
                    title[index],
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  trailing: SvgPicture.asset(
                    AppAssets.forward,
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: title.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
