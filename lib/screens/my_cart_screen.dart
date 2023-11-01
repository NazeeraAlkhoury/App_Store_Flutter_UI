import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_size.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:badges/badges.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: getAppBar(title: AppString.myCart, actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Badge(
              position: BadgePosition.bottomEnd(),
              badgeContent: const Text(
                '2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              badgeStyle: BadgeStyle(
                badgeColor: AppColors.secondaryColor,
                //borderRadius: BorderRadius.circular(30),
              ),
              child: SvgPicture.asset(
                AppAssets.sala,
                height: 25,
                width: 25,
              ),
            ),
          ),
        ]),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 389,
                height: 111,
                padding: const EdgeInsets.only(
                    left: 8, right: 10, bottom: 5, top: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.secondaryColor.withOpacity(.15),
                ),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 111,
                      width: 93,
                      child: Stack(
                        // alignment: AlignmentDirectional.bottomStart,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                            child: Image.asset(
                              'assets/images/bagcart2.png',
                            ),
                          ),
                          Positioned(
                            top: 85,
                            child: CircleAvatar(
                              backgroundColor: HexColor('#F3BFAA'),
                              radius: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bags',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Text(
                            'Antelope',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: AppFontSize.s12,
                                    ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            '\$ 256.90',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            '\$ 402.00',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 6,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: SvgPicture.asset(AppAssets.delete),
                          onTap: () {},
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                color: AppColors.tertiaryColor,
                                size: 11,
                              ),
                            ),
                            Text(
                              '1',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    letterSpacing: -0.08,
                                  ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: AppColors.tertiaryColor,
                                size: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ////////////////////
              Container(
                width: 389,
                height: 111,
                padding: const EdgeInsets.only(
                    left: 8, right: 10, bottom: 5, top: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.secondaryColor.withOpacity(.15),
                ),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 111,
                      width: 93,
                      child: Stack(
                        // alignment: AlignmentDirectional.bottomStart,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                            child: Image.asset(
                              'assets/images/bagcart2.png',
                            ),
                          ),
                          Positioned(
                            top: 85,
                            child: CircleAvatar(
                              backgroundColor: HexColor('#F3BFAA'),
                              radius: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bags',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Text(
                            'Antelope',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: AppFontSize.s12,
                                    ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            '\$ 256.90',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            '\$ 402.00',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 6,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: SvgPicture.asset(AppAssets.delete),
                          onTap: () {},
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                color: AppColors.tertiaryColor,
                                size: 11,
                              ),
                            ),
                            Text(
                              '1',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    letterSpacing: -0.08,
                                  ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: AppColors.tertiaryColor,
                                size: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
///////

              const SizedBox(
                height: 120,
              ),
              Theme(
                  data: ThemeData(
                    dividerTheme: DividerThemeData(
                      color: AppColors.blackColor,
                      //thickness: 1,
                    ),
                  ),
                  child: const Divider()),
              Text(
                AppString.orderInfo,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: AppFontSize.s22,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    Text(
                      AppString.subTotal,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: AppFontSize.s16,
                          ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    Text(
                      '\$ 537.08',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: AppFontSize.s16,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    AppString.deliveryFee,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: AppFontSize.s16,
                        ),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  Text(
                    '\$ 10.00',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: AppFontSize.s16,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    Text(
                      AppString.discount,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: AppFontSize.s16,
                          ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    Text(
                      '\$ 121.10',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: AppFontSize.s16,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.total,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(
                      width: 228,
                    ),
                    Text(
                      '\$ 547.08',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ],
                ),
              ),
              Center(
                child: Theme(
                  data: ThemeData(
                    elevatedButtonTheme: elvatedStyle3(),
                  ),
                  child: defaultElevatedButton(
                    text: AppString.checkOut,
                    asset: AppAssets.farm,
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.checkOutRoute);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ElevatedButtonThemeData elvatedStyle3() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(158, 35),
        textStyle: getRegularStyle(
          color: AppColors.elevtextColor,
          fontSize: AppFontSize.s20,
        ),
        alignment: Alignment.centerRight,
        elevation: AppSize.v0,
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
